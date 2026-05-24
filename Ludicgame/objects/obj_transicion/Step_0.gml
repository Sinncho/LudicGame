contador += 1;

// Cambiar de frame cada segundo
if (contador >= duracion_por_frame)
{
    contador = 0;
    frame_actual += 1;
    
    // Si ya pasamos los 3 sprites, autodestruirse
    if (frame_actual >= 3)
    {
        instance_destroy();
    }
}