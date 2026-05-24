// Si el minijuego ya terminó, no procesar
if (instance_exists(obj_trineo_controller))
{
    if (obj_trineo_controller.terminar)
    {
        exit;
    }
}

// El trineo sigue al mouse en X
x = mouse_x - (tamano / 2);

// Calcular los límites del carril a la altura del trineo
if (instance_exists(obj_lineas_fuga))
{
    var lineas = obj_lineas_fuga;
    
    // Centro vertical del trineo
    var centro_y = y + (tamano / 2);
    
    // Progreso vertical (0 = horizonte, 1 = base)
    var t = (centro_y - lineas.fuga_y) / (room_height - lineas.fuga_y);
    t = clamp(t, 0, 1);
    
    // Bordes del carril a esa altura
    var borde_izq = lerp(lineas.fuga_x - lineas.ancho_horizonte, lineas.margen_base, t);
    var borde_der = lerp(lineas.fuga_x + lineas.ancho_horizonte, room_width - lineas.margen_base, t);
    
    // Limitar el trineo al carril (no dejarlo salir)
    if (x < borde_izq) x = borde_izq;
    if (x + tamano > borde_der) x = borde_der - tamano;
}