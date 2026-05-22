// Verificar si el mouse está sobre el botón
if (position_meeting(mouse_x, mouse_y, id)) {
    
    // Cambia al segundo frame (Estilo Hitbox / Seleccionado)
    image_index = 1; 
    
    // DETECTAR EL CLIC (Evento con el mouse)
    if (mouse_check_button_pressed(mb_left)) {
        // Opción A: Ir a la siguiente escena
        room_goto(target_room);
        
        // Opción B: Si solo quieres activar un evento o función genérica, bórralo de arriba y ponlo aquí:
        // mi_funcion_del_evento();
    }
    
} else {
    // Si el mouse NO está encima, regresa al frame original
    image_index = 0;
}