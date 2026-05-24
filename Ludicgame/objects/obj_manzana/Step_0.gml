// Si terminó, no moverse
if (instance_exists(obj_manzana_controller))
{
    if (obj_manzana_controller.terminar)
    {
        exit;
    }
}

// Caer
y += velocidad;

// Detectar si la atrapó la canasta (colisión por rectángulos)
if (instance_exists(obj_canasta))
{
    var c = obj_canasta;
    
    // Rectángulo de la manzana
    var m_izq = x - (tamano / 2);
    var m_der = x + (tamano / 2);
    var m_arr = y - (tamano / 2);
    var m_abj = y + (tamano / 2);
    
    // Rectángulo de la canasta (solo la boca, la parte superior)
    var c_izq = c.x - (c.ancho / 2);
    var c_der = c.x + (c.ancho / 2);
    var c_arr = c.y;                    // Borde superior
    var c_abj = c.y + (c.alto / 2);     // Solo la mitad superior (la "boca")
    
    // Si los rectángulos se intersectan = atrapada
    if (m_izq < c_der && m_der > c_izq && m_arr < c_abj && m_abj > c_arr)
    {
        instance_destroy();
        exit;
    }
}

// Si toca el suelo SIN ser atrapada = perder
if (y > room_height - 50)
{
    global.minijuego_ganado = false;
    
    if (instance_exists(obj_manzana_controller))
    {
        obj_manzana_controller.terminar = true;
    }
    
    instance_destroy();
}