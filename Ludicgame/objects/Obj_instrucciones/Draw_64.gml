// Fondo semitransparente para que destaque
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(0, 0, gui_w, gui_h, false);
draw_set_alpha(1);

// Si está en fase visible del parpadeo, dibujar el sprite
if (visible_ahora && spr_instruccion != -1)
{
    var spr_w = sprite_get_width(spr_instruccion);
    var spr_h = sprite_get_height(spr_instruccion);
    
    var pos_x = (gui_w - spr_w) / 2;
    var pos_y = (gui_h - spr_h) / 2;
    
    draw_sprite(spr_instruccion, 0, pos_x, pos_y);
}

draw_set_color(c_white);