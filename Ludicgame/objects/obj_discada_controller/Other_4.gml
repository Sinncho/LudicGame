// Empezar perdiendo: solo gana si echa todos los buenos
global.minijuego_ganado = false;

// Generar entre 2 y 4 alimentos
var cantidad_total = irandom_range(2, 4);

// Decidir cuántos buenos (mínimo 1)
var cantidad_buenos = irandom_range(1, cantidad_total);
var cantidad_malos = cantidad_total - cantidad_buenos;

buenos_actuales = cantidad_buenos;

// Crear array con los frames disponibles
var buenos_disponibles = [0, 2, 4, 6];  // Frames pares
var malos_disponibles = [1, 3, 5, 7];   // Frames impares

// Mezclar arrays para no repetir
buenos_disponibles = array_shuffle(buenos_disponibles);
malos_disponibles = array_shuffle(malos_disponibles);

// Posiciones disponibles alrededor del tazón (en círculo)
var num_posiciones = cantidad_total;
var radio_spawn = 300;  // Distancia desde el centro
var centro_x = room_width / 2;
var centro_y = room_height / 2;

// Crear instancias de comida
var indice = 0;

// Crear buenos
for (var i = 0; i < cantidad_buenos; i++)
{
    var angulo = (indice / num_posiciones) * 360;
    var spawn_x = centro_x + lengthdir_x(radio_spawn, angulo);
    var spawn_y = centro_y + lengthdir_y(radio_spawn, angulo);
    
    var c = instance_create_layer(spawn_x, spawn_y, "Instances", obj_comida);
    c.image_index = buenos_disponibles[i];
    c.es_buena = true;
    
    indice += 1;
}

// Crear malos
for (var i = 0; i < cantidad_malos; i++)
{
    var angulo = (indice / num_posiciones) * 360;
    var spawn_x = centro_x + lengthdir_x(radio_spawn, angulo);
    var spawn_y = centro_y + lengthdir_y(radio_spawn, angulo);
    
    var c = instance_create_layer(spawn_x, spawn_y, "Instances", obj_comida);
    c.image_index = malos_disponibles[i];
    c.es_buena = false;
    
    indice += 1;
}