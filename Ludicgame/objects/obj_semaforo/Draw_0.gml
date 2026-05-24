// Dibujar fondo negro del semáforo
draw_set_color(c_black);
draw_rectangle(x - 5, y - 5, x + tamano_luz + 5, y + tamano_luz + 5, false);

// Dibujar la luz según el estado
if (estado == "rojo")
{
    draw_set_color(c_red);
}
else
{
    draw_set_color(c_lime);
}

draw_rectangle(x, y, x + tamano_luz, y + tamano_luz, false);

// Resetear color
draw_set_color(c_white);