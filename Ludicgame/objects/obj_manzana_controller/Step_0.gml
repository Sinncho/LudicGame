// Si terminó, esperar y disparar la alarma del game_manager
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

// Crear manzanas cada cierto tiempo
contador_spawn += 1;

if (contador_spawn >= intervalo_spawn)
{
    contador_spawn = 0;
    
    if (instance_exists(obj_arbol))
    {
        var arbol = obj_arbol;
        
        // Posición X aleatoria dentro del ancho de la copa
        var spawn_x = irandom_range(arbol.copa_izq + 30, arbol.copa_der - 30);
        var spawn_y = arbol.y_copa;
        
        var manzana = instance_create_layer(spawn_x, spawn_y, "Instances", obj_manzana);
        manzana.velocidad = velocidad_manzanas;
    }
}