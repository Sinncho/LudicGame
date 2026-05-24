/// @description Configurar el estado de corte

// El jugador empieza perdiendo (debe completar el trazo para ganar)
global.minijuego_ganado = false;

// Variables de control de la aguja ("esperando", "trazando", "roto", "victoria")
estado = "esperando"; 

// Ocultar el cursor de Windows para que solo se vea tu sprite de aguja
window_set_cursor(cr_none);