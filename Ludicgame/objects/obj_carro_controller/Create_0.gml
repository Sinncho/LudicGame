terminar = false;            // El minijuego terminó (mostrar texto, reiniciar)
bloquear_input = false;      // El jugador ya no puede pitar
contador_fin = 0;
if (variable_global_exists("velocidad_juego"))
{
    duracion_fin = round(45 / global.velocidad_juego);
}
else
{
    duracion_fin = 45;
}           // 0.75 segundos