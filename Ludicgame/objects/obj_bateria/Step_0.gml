tiempo_inicio += 1;

// Calcular qué tan avanzados estamos (0 = inicio, 1 = fin)
var progreso = tiempo_inicio / tiempo_minijuego_total;

// Cambiar el frame según el progreso
if (progreso < 1/3)
{
    image_index = 0;  // Verde
}
else if (progreso < 2/3)
{
    image_index = 1;  // Naranja
}
else
{
    image_index = 2;  // Rojo
}