if (global.minijuego_ganado == false)
{
    global.minijuego_ganado = true;

    for (var i = 0; i < 20; i++)
    {
        part_particles_create(
            part_sys,
            random(room_width),
            random(room_height / 2),
            part_type,
            25
        );
    }
}