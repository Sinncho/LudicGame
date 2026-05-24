// Configuración base
var velocidad_base = 5;
var intervalo_spawn_base = 50;  // Cada 0.83 seg cae una manzana

// Escalar según dificultad
if (variable_global_exists("velocidad_juego"))
{
    velocidad_manzanas = velocidad_base * global.velocidad_juego;
    intervalo_spawn = round(intervalo_spawn_base / global.velocidad_juego);
}
else
{
    velocidad_manzanas = velocidad_base;
    intervalo_spawn = intervalo_spawn_base;
}

contador_spawn = 0;

// Estado
terminar = false;
contador_fin = 0;
duracion_fin = 45;