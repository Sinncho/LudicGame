/// @description Disparar, hacer flash y matar al pato (Con escopeta)

// 1. Crear el destello blanco estilo NES
instance_create_depth(0, 0, -9999, obj_flash);

// 2. DISPARO CON MARGEN DE ERROR (Hitbox generosa)
// En lugar de un punto de 1 píxel, creamos un círculo invisible alrededor del mouse.
// Si cualquier parte del pato toca este círculo de 40 píxeles, cuenta como impacto.
var radio_de_impacto = 40; 
var pato_tocado = collision_circle(mouse_x, mouse_y, radio_de_impacto, obj_pato, false, true);

// Si el círculo atrapó a un pato...
if (pato_tocado != noone) {
    
    // Le decimos a ese pato que muera
    with (pato_tocado) {
        if (global.minijuego_ganado == false) {
            global.minijuego_ganado = true; // Marcamos la victoria
            
            // Cambiar la física para que caiga
            speed = 0;
            vspeed = 8; 
            
            // Forzamos al GameManager a terminar el minijuego de inmediato 
            obj_game_manager.alarm[1] = game_get_speed(gamespeed_fps) * 0.5;
        }
    }
}