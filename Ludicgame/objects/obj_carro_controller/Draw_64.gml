if (terminar)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    var centro_x = display_get_gui_width() / 2;
    var centro_y = display_get_gui_height() / 2;
    
    if (global.minijuego_ganado)
    {
        draw_set_color(c_lime);
        draw_text_transformed(centro_x, centro_y, "¡GANASTE!", 6, 6, 0);
    }
    else
    {
        draw_set_color(c_red);
        draw_text_transformed(centro_x, centro_y, "¡PERDISTE!", 6, 6, 0);
    }
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
}