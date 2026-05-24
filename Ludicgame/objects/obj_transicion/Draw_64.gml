// Decidir qué sprite mostrar según el frame actual
var spr_a_dibujar = sprite_1;

switch (frame_actual)
{
    case 0: spr_a_dibujar = sprite_1; break;
    case 1: spr_a_dibujar = sprite_2; break;
    case 2: spr_a_dibujar = sprite_3; break;
}

// Dibujar centrado en pantalla
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var spr_w = sprite_get_width(spr_a_dibujar);
var spr_h = sprite_get_height(spr_a_dibujar);

var pos_x = (gui_w - spr_w) / 2;
var pos_y = (gui_h - spr_h) / 2;

draw_sprite(spr_a_dibujar, 0, pos_x, pos_y);