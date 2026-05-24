// Si nunca se ha jugado un minijuego, no mostrar transición
if (!variable_global_exists("lastRoom") || global.lastRoom == noone)
{
    instance_destroy();
    exit;
}

// Cada frame durará 1 segundo (60 frames a 60fps)
duracion_por_frame = 60;
contador = 0;
frame_actual = 0;

// Decidir qué animación mostrar según el resultado del último minijuego
if (variable_global_exists("minijuego_ganado") && global.minijuego_ganado == true)
{
    sprite_1 = Ani_1;
    sprite_2 = Ani_2;
    sprite_3 = Ani_3;
}
else
{
    sprite_1 = Ani_1;
    sprite_2 = Ani_2_1;
    sprite_3 = Ani_3_1;
}