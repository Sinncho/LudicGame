/// @description Inicializar el juego estilo WarioWare (Bolsa Infinita)

persistent = true;

// Estadísticas globales
global.vidas = 4;
global.puntuacion = 15;
global.velocidad_juego = 1.0; 

global.dificultad = "Easy";


// LISTA TOTAL DE MINIJUEGOS: Aquí pones todas las rooms de tu juego.
// Como ya no se borran, esta lista se queda fija para siempre.
global.lista_minijuegos = [rm_queso]; 

global.lastRoom = noone;          // Para evitar que se repita el juego anterior
global.minijuego_ganado = false;  
global.ultimo_resultado = "";     // "gano" o "perdio" para las cinemáticas

// Variables internas
target_room = noone;