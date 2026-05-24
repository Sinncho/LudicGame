x = 0;
y = 0;

// Ventana base de 3 segundos en verde, dividida por la velocidad del juego
// Velocidad 1.0 (Easy) → 3 segundos
// Velocidad 1.5 (Normal) → 2 segundos
// Velocidad 2.0 (Hard) → 1.5 segundos
var ventana_base = 3;

if (variable_global_exists("velocidad_juego"))
{
    ventana_frames = (ventana_base / global.velocidad_juego) * 60;
}
else
{
    ventana_frames = ventana_base * 60;
}

contador_ventana = 0;
arrancado = false;

// Velocidad fija
velocidad = 8;

// Dirección diagonal hacia arriba-izquierda
mov_x = -velocidad * 0.95;
mov_y = -velocidad * 0.7;