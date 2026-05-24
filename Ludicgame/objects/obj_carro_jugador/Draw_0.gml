// Dibujar el sprite del carro
draw_self();

// Si está pitando, mostrar burbuja "¡PI!" arriba a la derecha (donde está el carro jugador en la imagen)
if (mostrando_pi)
{
    // Ajusta estos valores según dónde esté el carro jugador en tu sprite
    var pi_x = 1100;
    var pi_y = 350;
    
    // Burbuja blanca con borde
    draw_set_color(c_white);
    draw_rectangle(pi_x - 60, pi_y - 25, pi_x + 60, pi_y + 25, false);
    draw_set_color(c_black);
    draw_rectangle(pi_x - 60, pi_y - 25, pi_x + 60, pi_y + 25, true);
    
    // Texto
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_black);
    draw_text_transformed(pi_x, pi_y, "¡PI!", 3, 3, 0);
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
}