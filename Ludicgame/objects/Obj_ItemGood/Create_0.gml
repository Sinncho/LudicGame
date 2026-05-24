var skins = [
    spr_item_good_1,
    spr_item_good_2,
    spr_item_good_3,
    spr_item_good_4
];

sprite_index = skins[irandom(3)];

dragging = false;
offset_x = 0;
offset_y = 0;
depth = 0;

image_xscale = .3;
image_yscale = .3;