/// @description Configurar el pato

// 1. El juego empieza en falso (si no le das al pato, pierdes)
global.minijuego_ganado = false;

// 2. Movimiento inicial aleatorio (hacia arriba e izquierda/derecha)
direction = random_range(45, 135); 

// 3. Velocidad basada en la dificultad global
velocidad_pato = 6 * global.velocidad_juego;
speed = velocidad_pato;