// Dibujar el carro amarillo
draw_set_color(c_yellow);
draw_rectangle(x, y, x + tamano, y + tamano, false);

// Si está pitando, mostrar "¡PI!" arriba del carro
if (mostrando_pi)
{
    // Fondo blanco para el texto (como una burbuja de cómic)
    var texto_x = x + (tamano / 2);
    var texto_y = y - 50;
    
    draw_set_color(c_white);
    draw_rectangle(texto_x - 60, texto_y - 25, texto_x + 60, texto_y + 25, false);
    
    // Borde negro de la burbuja
    draw_set_color(c_black);
    draw_rectangle(texto_x - 60, texto_y - 25, texto_x + 60, texto_y + 25, true);
    
    // Texto "¡PI!" en negro y grande
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_black);
    
    draw_text_transformed(texto_x, texto_y, "¡PI!", 3, 3, 0);
    
    // Resetear alineación
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}

draw_set_color(c_white);