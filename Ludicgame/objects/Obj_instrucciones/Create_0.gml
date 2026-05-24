// El sprite a mostrar (cada minijuego lo va a setear antes de crear)
// Por defecto, sin sprite
if (!variable_instance_exists(id, "spr_instruccion"))
{
    spr_instruccion = -1;
}

// Duración total en frames (1 segundo = 60 frames)
duracion_total = 60;
contador = 0;

// Parpadeo: visible / invisible alternando
visible_ahora = true;
ciclo_parpadeo = 20;  // Cada 20 frames cambia (3 cambios en 60 frames = 1.5 parpadeos)
contador_parpadeo = 0;