/// @description Controlar el flujo (Bolsa Infinita sin repetir dos veces)

// CASO A: Estamos en el mezclador (Cinemáticas)show_debug_message(room)
if (room == rm_mezclador) {
    
    alarm[1] = -1; // Apagar alarma del minijuego por seguridad
    
    // 1. Revisar si el jugador perdió
    if (global.vidas <= 0) {
        room_goto(rm_game_over);
        exit;
    }
    
    // =========================================================================
    // NUEVO: CONTROL DE VELOCIDAD POR PUNTUACIÓN (ESTRICTO)
    // =========================================================================
    if (global.puntuacion >= 15) {
        global.velocidad_juego = 2.0;  // A los 15 puntos o más, el doble de rápido (x2)
		global.dificultad = "Hard";
    } 
    else if (global.puntuacion >= 10) {
        global.velocidad_juego = 1.5;  // De 10 a 14 puntos, velocidad 1.5
		global.dificultad = "Normal"
    } 
    else {
        global.velocidad_juego = 1.0;
    }
    // =========================================================================
    
    // 3. Seleccionar un minijuego al azar de TODA la lista
    var indice_aleatorio = irandom(array_length(global.lista_minijuegos) - 1);
    var proximo_juego = global.lista_minijuegos[indice_aleatorio];
    
    // 4. FILTRO ANTI-REPETICIÓN: Si salió el mismo de la ronda anterior, elegimos el siguiente
    if (proximo_juego == global.lastRoom && array_length(global.lista_minijuegos) > 1) {
        indice_aleatorio = (indice_aleatorio + 1) % array_length(global.lista_minijuegos);
        proximo_juego = global.lista_minijuegos[indice_aleatorio];
    }
    
    // 5. Guardar los datos para el viaje
    target_room = proximo_juego; 
    global.lastRoom = proximo_juego; // Bloqueamos este juego para la siguiente ronda
    
    // 6. Tiempo de la cinemática en el mezclador (3 segundos)
    alarm[0] = game_get_speed(gamespeed_fps) * 3; 
} 

// CASO B: Entramos a un minijuego
else if (room != rm_menuPrincipal && room != rm_game_over) {
    
    alarm[0] = -1; // Apagar alarma del mezclador
    global.minijuego_ganado = false; // Por defecto se empieza perdiendo
    
    // 1. Duración por defecto (por si a algún compañero se le olvida configurarla)
    var tiempo_base_segundos = 6; 
    
    // 2. REGLA PERSONALIZADA POR ROOM:
    switch (room) {
        case rm_tarahumaraCorriendo:
            tiempo_base_segundos = 5; 
            break;
			
		case Rm_Trineo:
			tiempo_base_segundos = 8;
			break;
    }
    
    // 3. Aplicamos la velocidad actual del juego al tiempo elegido
    // ¡Aquí ocurre la magia! Al dividir por 1.5 o 2.0, el tiempo real se encoge solo.
    var tiempo_ajustado = tiempo_base_segundos / global.velocidad_juego;
    
    // 4. Se activa el reloj con el tiempo final
    alarm[1] = game_get_speed(gamespeed_fps) * tiempo_ajustado;
}