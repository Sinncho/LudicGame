// Velocidad base, escalada por la dificultad
var velocidad_base = -4;

if (global.dificultad = "Hard")
{
	velocidad_base = -7;
}

if (global.dificultad = "Normal")
{
	velocidad_base = -5;
}

if (variable_global_exists("velocidad_juego"))
{
    velocidad = velocidad_base * global.velocidad_juego;
}
else
{
    velocidad = velocidad_base;
}

tamano = 128;