// Si el minijuego ya terminó completamente, no moverse
if (instance_exists(obj_carro_controller))
{
    if (obj_carro_controller.terminar)
    {
        exit;
    }
}

// Solo moverse si el semáforo está en verde
if (instance_exists(obj_semaforo))
{
    if (obj_semaforo.estado == "verde")
    {
        x += velocidad;
    }
}

// Detectar si pasó media pantalla (bloquear input, pero seguir avanzando)
var media_pantalla = room_width / 2;

if (x + (tamano / 2) < media_pantalla)
{
    if (instance_exists(obj_carro_controller))
    {
        if (!obj_carro_controller.bloquear_input)
        {
            global.minijuego_ganado = false;
            obj_carro_controller.bloquear_input = true;
        }
    }
}

// Si sale del borde izquierdo: terminó el trayecto, ahora sí mostrar derrota
if (x + tamano < 0)
{
    if (instance_exists(obj_carro_controller))
    {
        obj_carro_controller.terminar = true;
    }
    
    instance_destroy();
}