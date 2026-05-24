if (terminar)
{
    contador_fin += 1;
    
    if (contador_fin >= duracion_fin)
    {
        // En vez de ir directo al mezclador, disparamos la alarma 1 del game_manager
        // El game_manager evaluará el resultado y se encargará del room_goto
        if (instance_exists(obj_game_manager))
        {
            obj_game_manager.alarm[1] = 1;
        }
        
        // Evitar disparar la alarma más de una vez
        terminar = false;
    }
}