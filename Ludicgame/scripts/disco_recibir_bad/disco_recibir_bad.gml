function disco_recibir_bad(disco_id)
{
    if (!instance_exists(disco_id))
        return;

    with (disco_id)
    {
        // Evitar repetir derrota
        if (minijuego_terminado)
            return;

        minijuego_terminado = true;

        // Cambiar sprite de perder
        sprite_index = spr_disco_gameover;
    }

    global.minijuego_ganado = false;
}