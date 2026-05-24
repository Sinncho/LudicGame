if (terminar)
{
    contador_fin += 1;
    
    if (contador_fin >= duracion_fin)
    {
        if (instance_exists(obj_game_manager))
        {
            obj_game_manager.alarm[1] = 1;
        }
        terminar = false;
    }
}