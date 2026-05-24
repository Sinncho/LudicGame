estado = "rojo";

// Tiempo en rojo: 3 segundos, dividido por la velocidad del juego
var segundos_rojo = 3;

if (variable_global_exists("velocidad_juego"))
{
    segundos_rojo = 3 / global.velocidad_juego;
}

tiempo_rojo = segundos_rojo * 60;
contador = tiempo_rojo;

tamano_luz = 40;