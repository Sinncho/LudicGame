// Color rojo para las líneas (referencia visual)
draw_set_color(c_red);

// Línea izquierda del carril (del punto de fuga al borde izq inferior)
draw_line_width(
    fuga_x - ancho_horizonte, fuga_y,
    margen_base, room_height,
    3
);

// Línea derecha del carril
draw_line_width(
    fuga_x + ancho_horizonte, fuga_y,
    room_width - margen_base, room_height,
    3
);

// Líneas horizontales con efecto de movimiento (escalones de la duna)
draw_set_color(make_color_rgb(200, 80, 80)); // Rojo más claro

for (var i = 0; i < num_lineas; i++)
{
    // Posición vertical de cada línea (con desplazamiento animado)
    var t = ((i / num_lineas) + (desplazamiento / room_height)) mod 1;
    
    // Curva para concentrar las líneas cerca del horizonte
    t = t * t;
    
    var ly = fuga_y + t * (room_height - fuga_y);
    
    // Calcular el ancho de la línea en esa altura (perspectiva)
    var t_lineal = (ly - fuga_y) / (room_height - fuga_y);
    var lx_izq = lerp(fuga_x - ancho_horizonte, margen_base, t_lineal);
    var lx_der = lerp(fuga_x + ancho_horizonte, room_width - margen_base, t_lineal);
    
    draw_line_width(lx_izq, ly, lx_der, ly, 2);
}

draw_set_color(c_white);