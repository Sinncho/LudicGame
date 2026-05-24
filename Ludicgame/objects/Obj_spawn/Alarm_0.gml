if (random(1) < 0.8)
{
    if (irandom(1) == 0)
    {
        instance_create_layer(x, y, "Instances", Obj_ItemGood);
    }
    else
    {
        instance_create_layer(x, y, "Instances", Obj_ItemBad);
    }
}

// Spawn más rápido según dificultad
var tiempo_spawn = 1.2 / global.velocidad_juego;

alarm[0] = room_speed * tiempo_spawn;