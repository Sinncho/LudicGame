buenos_en_disco += 1;

// Si ya metimos todos los buenos y NO hemos perdido antes
if (buenos_en_disco >= total_buenos_inicial && sprite_index != spr_disco_gameover) {
    global.minijuego_ganado = true;
    global.puntuacion += 1; // Sumamos punto al controlador global
    sprite_index = spr_disco_2; // Disco lleno / victoria
} else {
    // Progreso visual intermedio (ej: si metió la mitad)
    if (buenos_en_disco >= total_buenos_inicial / 2) {
        sprite_index = spr_disco_1;
    }
}