/// @description Evaluar resultado y volver al mezclador

if (global.minijuego_ganado == true) {
    global.puntuacion += 1;
    global.ultimo_resultado = "gano";
} else {
    global.vidas -= 1;
    global.ultimo_resultado = "perdio";
}

// Volver al mezclador
room_goto(rm_mezclador);