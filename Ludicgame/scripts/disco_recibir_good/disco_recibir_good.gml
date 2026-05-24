function disco_recibir_good(disco_id)
{
    if (!instance_exists(disco_id))
        return;

    with (disco_id)
    {
        if (minijuego_terminado)
            return;

        good_collected++;

        // Cambio visual del disco
        switch(good_collected)
        {
            case 1:
                sprite_index = spr_disco_0;
            break;

            case 2:
                sprite_index = spr_disco_2;
            break;
        }

        // Si ya no quedan items buenos
        if (instance_number(Obj_ItemGood) <= 1)
        {
            minijuego_terminado = true;
            global.minijuego_ganado = true;
        }
    }
}