// Si terminó (chocó con obstáculo), contar para mostrar resultado
if (terminar)
{
    contador_fin += 1;
    
    if (contador_fin >= duracion_fin)
    {
        room_goto(rm_mezclador);
    }
    
    exit;
}

// Crear obstáculos cada cierto tiempo
contador_spawn += 1;

if (contador_spawn >= intervalo_spawn)
{
    contador_spawn = 0;
    
    var nuevo = instance_create_layer(0, 0, "Instances", obj_obstaculo);
    nuevo.velocidad = velocidad_obs;
}