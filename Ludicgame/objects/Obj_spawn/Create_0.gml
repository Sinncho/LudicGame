// Elegimos al azar: 0 = Vacío, 1 = Comida Buena, 2 = Comida Mala
var chance = choose(0, 1, 2);

switch(chance) {
    case 1:
        instance_create_layer(x, y, layer, Obj_ItemGood);
        break;
    case 2:
        instance_create_layer(x, y, layer, Obj_ItemBad);
        break;
    case 0:
        // Se queda vacío
        break;
}

// El spawn ya cumplió su función, se destruye para no ocupar memoria
instance_destroy();