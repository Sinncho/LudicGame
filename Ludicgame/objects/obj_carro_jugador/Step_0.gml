// Si el input está bloqueado, no procesar la tecla espacio
if (instance_exists(obj_carro_controller))
{
    if (obj_carro_controller.bloquear_input)
    {
        // Pero sí seguir bajando el contador del PI
        if (mostrando_pi)
        {
            tiempo_pi -= 1;
            if (tiempo_pi <= 0) mostrando_pi = false;
        }
        exit;
    }
}

// Detectar tecla espacio para pitar
if (mouse_check_button_pressed(mb_left))
{
    mostrando_pi = true;
    tiempo_pi = duracion_pi;
    
    if (instance_exists(obj_semaforo))
    {
        if (obj_semaforo.estado == "rojo")
        {
            global.minijuego_ganado = false;
            
            if (instance_exists(obj_carro_controller))
            {
                obj_carro_controller.bloquear_input = true;
                obj_carro_controller.terminar = true;
            }
        }
        else
        {
            global.minijuego_ganado = true;
            
            if (instance_exists(obj_carro_controller))
            {
                obj_carro_controller.bloquear_input = true;
                obj_carro_controller.terminar = true;
            }
        }
    }
}

// Bajar el contador del "¡PI!"
if (mostrando_pi)
{
    tiempo_pi -= 1;
    
    if (tiempo_pi <= 0)
    {
        mostrando_pi = false;
    }
}