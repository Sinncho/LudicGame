// Si el minijuego ya terminó, no moverse
if (instance_exists(obj_trineo_controller))
{
    if (obj_trineo_controller.terminar)
    {
        exit;
    }
}

// Bajar el obstáculo
y += velocidad;

// Progreso vertical (0 = horizonte, 1 = base)
var progreso = (y - y_inicial) / (room_height - y_inicial);
progreso = clamp(progreso, 0, 1);

// Escala aumenta conforme baja
escala = 0.2 + (progreso * 0.8);

// X se interpola entre x_inicial (horizonte) y x_destino (base)
// Esto hace que siga el ángulo del carril
x = lerp(x_inicial, x_destino, progreso);

// Detectar colisión con el trineo
if (instance_exists(obj_trineo))
{
    if (escala > 0.7)
    {
        var tam_actual = tamano_base * escala;
        var trineo = obj_trineo;
        
        if (x - tam_actual/2 < trineo.x + trineo.tamano &&
            x + tam_actual/2 > trineo.x &&
            y - tam_actual/2 < trineo.y + trineo.tamano &&
            y + tam_actual/2 > trineo.y)
        {
            global.minijuego_ganado = false;
            obj_trineo_controller.terminar = true;
        }
    }
}

// Si sale por abajo, destruir
if (y > room_height + 100)
{
    instance_destroy();
}