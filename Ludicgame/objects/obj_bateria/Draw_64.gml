var gui_w = display_get_gui_width();
var margen = 20;

// Obtener el ancho del sprite Bateria directamente del recurso
var bat_w = sprite_get_width(Bateria);

var pos_x = gui_w - bat_w - margen;
var pos_y = margen;

draw_sprite(Bateria, image_index, pos_x, pos_y);