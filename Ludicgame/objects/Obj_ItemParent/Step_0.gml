// 1. SI YA PERDIMOS: Bloquear por completo cualquier interacción
if (instance_exists(Obj_Disco) && Obj_Disco.sprite_index == spr_disco_gameover) {
    is_dragging = false;
    exit; 
}

// 2. Lógica de arrastrar (Drag & Drop) limpia
if (mouse_check_button_pressed(mb_left)) {
    // Verificamos si el mouse está exactamente sobre ESTA instancia
    if (position_meeting(mouse_x, mouse_y, id)) {
        is_dragging = true;
        // Guardamos la distancia relativa para evitar el "salto" del objeto
        xx = x - mouse_x;
        yy = y - mouse_y;
    }
}

if (is_dragging) {
    x = mouse_x + xx;
    y = mouse_y + yy;
    
    if (mouse_check_button_released(mb_left)) {
        is_dragging = false;
        
        // Al soltar el mouse, verificamos si colisiona con el disco
        var disco = instance_place(x, y, Obj_Disco);
        if (disco != noone) {
            
            // Si el disco YA está en gameover, ignoramos cualquier colisión nueva
            if (disco.sprite_index == spr_disco_gameover) {
                exit;
            }
            
            // Evaluamos qué objeto somos
            if (object_index == Obj_ItemGood) {
                // Ejecutamos el evento del disco para contar el acierto
                with(disco) { event_user(0); }
                instance_destroy(); // Se destruye porque "ya se lo comió el disco"
            } 
            else if (object_index == Obj_ItemBad) {
                // ¡Defeated! Cambiamos el sprite del disco inmediatamente
                disco.sprite_index = spr_disco_gameover;
                global.minijuego_ganado = false; // El controller global leerá esto al expirar el tiempo
                instance_destroy();
            }
        }
    }
}