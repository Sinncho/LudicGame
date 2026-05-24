// Configuración del spawn de obstáculos
velocidad_obs = 4;
intervalo_spawn = 60;  // cada 1 segundo
contador_spawn = 0;

// Estado del minijuego
terminar = false;
contador_fin = 0;
duracion_fin = 45;

// Por defecto, el jugador GANA si sobrevive (no choca)
// El game_manager nos dará el tiempo automáticamente
global.minijuego_ganado = true;