depth = -10;  // Que aparezca encima del tazón

image_speed = 0;
image_index = 0;  // Se setea desde el controller

// Si es buena o mala (los frames pares son buenos, impares malos)
es_buena = false;

// Estado de arrastre
arrastrando = false;
offset_x = 0;
offset_y = 0;

// Tamaño de colisión con el tazón
radio_colision = 60;