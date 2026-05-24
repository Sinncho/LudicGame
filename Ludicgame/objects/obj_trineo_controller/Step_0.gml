// Si terminó, contar para regresar al mezclador
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
    
    exit;
}

// Crear obstáculos cada cierto tiempo
if (global.dificultad == "Easy"){
contador_spawn += 1;
}

if (global.dificultad == "Normal"){
contador_spawn += 2;
}

if (global.dificultad == "Hard"){
contador_spawn += 3;
}

if (contador_spawn >= intervalo_spawn)
{
    contador_spawn = 0;
    
    var nuevo = instance_create_layer(0, 0, "Instances", obj_obstaculo);
    nuevo.velocidad = velocidad_obs;
}