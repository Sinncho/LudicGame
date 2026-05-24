/// @description Reglas de trazado y colisiones

// 1. La aguja siempre sigue las coordenadas del mouse
x = mouse_x;
y = mouse_y;

// =========================================================
// ESTADO 1: ESPERANDO A QUE EL JUGADOR INICIE
// =========================================================
if (estado == "esperando") {
    
    // Si presiona el clic izquierdo EXACTAMENTE sobre el punto de inicio
    if (mouse_check_button_pressed(mb_left) && place_meeting(x, y, obj_inicio)) {
        estado = "trazando"; // ¡Empieza el juego!
    }
}

// =========================================================
// ESTADO 2: TRAZANDO LA LÍNEA
// =========================================================
else if (estado == "trazando") {
    
    // REGLA 1 (ANTI-TRAMPA): Si suelta el clic a mitad del camino, se rompe.
    if (!mouse_check_button(mb_left)) {
        estado = "roto";
    }
    
    // REGLA 2 (PRECISIÓN): Si choca con el queso malo (fuera de la línea).
    if (place_meeting(x, y, obj_trampa)) {
        estado = "roto";
    }
    
    // REGLA 3 (VICTORIA): Si llega a la meta sin haberse roto.
    if (place_meeting(x, y, obj_meta)) {
        estado = "victoria";
    }
}

// =========================================================
// EVALUAR RESULTADO (GANAR O PERDER)
// =========================================================
if (estado == "roto" && global.minijuego_ganado == false) {
    // Si rompió el queso, marcamos derrota
    global.minijuego_ganado = false;
    
    // Forzamos al manager a sacarnos del cuarto en el siguiente frame
    obj_game_manager.alarm[1] = 1; 
}
else if (estado == "victoria" && global.minijuego_ganado == false) {
    // Si completó la forma del chihuahua marcamos victoria
    global.minijuego_ganado = true;
    
    // Pausar medio segundo para que el jugador vea que ganó antes de regresar al mezclador
    obj_game_manager.alarm[1] = game_get_speed(gamespeed_fps) * 0.5; 
}