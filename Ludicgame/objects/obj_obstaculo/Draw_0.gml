var tam_actual = tamano_base * escala;

draw_set_color(c_red);
draw_rectangle(
    x - tam_actual/2, 
    y - tam_actual/2, 
    x + tam_actual/2, 
    y + tam_actual/2, 
    false
);
draw_set_color(c_white);