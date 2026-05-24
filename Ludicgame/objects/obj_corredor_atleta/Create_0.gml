/// @description Configurar el corredor

// 1. Comunicación con el GameManager
global.minijuego_ganado = false; 

part_sys = part_system_create();

part_system_depth(part_sys, -100);

part_type = part_type_create();

part_type_shape(part_type, pt_shape_flare);

part_type_size(part_type, 0.5, 1.5, 0, 0);

part_type_speed(part_type, 4, 10, 0, 0);

part_type_direction(part_type, 0, 360, 0, 0);

part_type_gravity(part_type, 0.15, 270);

part_type_orientation(part_type, 0, 360, 5, 0, true);

part_type_color_mix(
    part_type,
    c_red,
    c_blue
);

part_type_alpha2(part_type, 1, 0);

part_type_life(part_type, 90, 150);
// 2. Mecánica de alternar clicks
ultimo_click = "libre"; 

// 3. Avance directo por click (píxeles que se mueve instantáneamente)
// Se escala con la dificultad para compensar el tiempo que se acorta
avance_por_click = 35 * global.velocidad_juego; 


if (global.dificultad == "Easy")
{
	x = 480; 
}

if (global.dificultad == "Normal")
{
x = 224; 
}

if (global.dificultad == "Hard")
{
x = 0; 
}


part_type_life(part_type, 30, 90);