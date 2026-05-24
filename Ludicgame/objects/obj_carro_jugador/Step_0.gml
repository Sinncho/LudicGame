// Si el input está bloqueado, no procesar
if (instance_exists(obj_carro_controller))
{
    if (obj_carro_controller.bloquear_input)
    {
        if (mostrando_pi)
        {
            tiempo_pi -= 1;
            if (tiempo_pi <= 0) mostrando_pi = false;
        }
        exit;
    }
}

// Click izquierdo para pitar
if (mouse_check_button_pressed(mb_left))
{
    mostrando_pi = true;
    tiempo_pi = duracion_pi;
    
    if (instance_exists(obj_semaforo))
    {
        if (obj_semaforo.estado == "rojo")
        {
            // Pitó muy temprano = PIERDE
            global.minijuego_ganado = false;
            
            if (instance_exists(obj_carro_controller))
            {
                obj_carro_controller.bloquear_input = true;
                obj_carro_controller.terminar = true;
            }
        }
        else
        {
            // Pitó en verde = GANA
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
    if (tiempo_pi <= 0) mostrando_pi = false;
}