// =====================================
// NO HACER NADA SI TERMINÓ
// =====================================

if (instance_exists(Obj_Disco))
{
    var disco_check = instance_find(Obj_Disco, 0);

    if (disco_check.minijuego_terminado)
    {
        dragging = false;
        exit;
    }
}


// =====================================
// AGARRAR ITEM
// =====================================

if (mouse_check_button_pressed(mb_left))
{
    // Click usando hitbox visible
    if (point_in_rectangle(
        mouse_x,
        mouse_y,
        bbox_left,
        bbox_top,
        bbox_right,
        bbox_bottom
    ))
    {
        dragging = true;

        offset_x = x - mouse_x;
        offset_y = y - mouse_y;

        depth = -100;
    }
}


// =====================================
// ARRASTRAR
// =====================================

if (dragging)
{
    x = mouse_x + offset_x;
    y = mouse_y + offset_y;
}


// =====================================
// SOLTAR
// =====================================

if (mouse_check_button_released(mb_left) && dragging)
{
    dragging = false;
    depth = 0;

    if (instance_exists(Obj_Disco))
    {
        var disco = instance_find(Obj_Disco, 0);

        // Distancia al centro del disco
        var dist = point_distance(
            x,
            y,
            disco.x,
            disco.y
        );

        // ¿Entró al área?
        if (dist <= disco.radio_drop)
        {
            if (object_index == Obj_ItemGood)
            {
                disco_recibir_good(disco);
            }
            else
            {
                disco_recibir_bad(disco);
            }

            instance_destroy();
        }
    }
}