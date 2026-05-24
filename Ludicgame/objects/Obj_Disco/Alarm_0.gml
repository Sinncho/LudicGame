// Contamos cuántos items buenos reales aparecieron en el room
total_buenos_inicial = instance_number(Obj_ItemGood);

// Si por alguna razón de azar el spawn creó 0 items buenos, el jugador ya ganó
if (total_buenos_inicial == 0) {
    global.minijuego_ganado = true;
    global.puntuacion += 1; // Sumamos punto global
}