// Si terminó, no animar
if (instance_exists(obj_trineo_controller))
{
    if (obj_trineo_controller.terminar)
    {
        exit;
    }
}

// Animar el desplazamiento (efecto de movimiento)
desplazamiento += velocidad_lineas;

if (desplazamiento >= room_height)
{
    desplazamiento = 0;
}