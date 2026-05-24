

if (instance_number(obj_bateria) > 1)
{
    instance_destroy();
    exit;
}// Image index empieza en verde

image_index = 0;
image_speed = 0;  // Sin animación automática

// Variables
tiempo_minijuego_total = 0;
tiempo_inicio = 0;

// Calcular cuánto dura este minijuego según la velocidad del juego
var tiempo_base_segundos = 6;

// Caso especial: rm_minigame_test dura 10 según el game_manager
if (room == rm_minigame_test)
{
    tiempo_base_segundos = 10;
}

// Aplicar la velocidad del juego
if (variable_global_exists("velocidad_juego"))
{
    tiempo_minijuego_total = (tiempo_base_segundos / global.velocidad_juego) * game_get_speed(gamespeed_fps);
}
else
{
    tiempo_minijuego_total = tiempo_base_segundos * game_get_speed(gamespeed_fps);
}