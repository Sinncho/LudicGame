// Si el minijuego terminó, no procesar
if (instance_exists(obj_discada_controller))
{
    if (obj_discada_controller.terminar)
    {
        exit;
    }
}

// Detectar inicio de arrastre con click izquierdo
if (mouse_check_button_pressed(mb_left))
{
    // Verificar si el click fue sobre este objeto
    if (position_meeting(mouse_x, mouse_y, id))
    {
        arrastrando = true;
        offset_x = x - mouse_x;
        offset_y = y - mouse_y;
    }
}

// Mientras se arrastra, mover con el mouse
if (arrastrando)
{
    x = mouse_x + offset_x;
    y = mouse_y + offset_y;
    
    // Si se suelta el click
    if (!mouse_check_button(mb_left))
    {
        arrastrando = false;
        
        // Verificar si se soltó sobre el tazón
        if (instance_exists(obj_tazon))
        {
            var dist = point_distance(x, y, obj_tazon.x, obj_tazon.y);
            
            if (dist < radio_colision + 100)  // Margen de tolerancia
            {
                // ¡Cayó en el tazón!
                if (es_buena)
                {
                    obj_tazon.buenos_echados += 1;
                    
                    // Cambiar frame del tazón
                    if (obj_tazon.buenos_echados >= 2)
                    {
                        obj_tazon.image_index = 1;  // lleno
                    }
                    else
                    {
                        obj_tazon.image_index = 0;  // medio lleno
                    }
                    
                    // Avisar al controller que se echó uno bueno
                    if (instance_exists(obj_discada_controller))
                    {
                        obj_discada_controller.buenos_actuales -= 1;
                        
                        // Si ya no quedan buenos por echar, GANA
                        if (obj_discada_controller.buenos_actuales <= 0)
                        {
                            global.minijuego_ganado = true;
                            obj_discada_controller.terminar = true;
                        }
                    }
                }
                else
                {
                    // Malo: PIERDE
                    obj_tazon.image_index = 2;  // echado a perder
                    obj_tazon.echado_a_perder = true;
                    
                    global.minijuego_ganado = false;
                    
                    if (instance_exists(obj_discada_controller))
                    {
                        obj_discada_controller.terminar = true;
                    }
                }
                
                instance_destroy();
            }
        }
    }
}