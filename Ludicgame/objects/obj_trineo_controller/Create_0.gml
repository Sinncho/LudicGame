// Configuración base
var velocidad_obs_base = 4;
var intervalo_spawn_base = 60;

// Escalar según dificultad
if (variable_global_exists("velocidad_juego"))
{
    velocidad_obs = velocidad_obs_base * global.velocidad_juego;
    intervalo_spawn = round(intervalo_spawn_base / global.velocidad_juego);
}
else
{
    velocidad_obs = velocidad_obs_base;
    intervalo_spawn = intervalo_spawn_base;
}

contador_spawn = 0;

// Estado del minijuego
terminar = false;
contador_fin = 0;
if (variable_global_exists("velocidad_juego"))
{
    duracion_fin = round(45 / global.velocidad_juego);
}
else
{
    duracion_fin = 45;
}         