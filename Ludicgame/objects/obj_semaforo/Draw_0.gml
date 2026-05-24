if (estado == "rojo")
{
    // Dibujar luz roja (primera de izquierda a derecha en el semáforo)
    draw_set_color(c_red);
    draw_circle(luz_x, luz_y, radio_luz, false);
}
else
{
    // Dibujar luz verde (tercera, la de más a la derecha)
    draw_set_color(c_lime);
    draw_circle(luz_x + (separacion * 2), luz_y, radio_luz, false);
}

draw_set_color(c_white);