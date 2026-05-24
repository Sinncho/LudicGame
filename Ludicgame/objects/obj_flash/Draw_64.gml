/// @description Pintar la pantalla de blanco

// Configurar el color a blanco sólido
draw_set_color(c_white);
draw_set_alpha(1);

// Dibujar un rectángulo que cubra toda la resolución de la pantalla
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

// MUY IMPORTANTE: Resetear los valores para no arruinar otros dibujos del juego
draw_set_color(c_white);
draw_set_alpha(1);