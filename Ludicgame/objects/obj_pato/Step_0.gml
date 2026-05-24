/// @description Rebotar en las paredes

// Rebotar en los lados izquierdo y derecho
if (x < 32 || x > room_width - 32) {
    hspeed = -hspeed;
}

// Rebotar en el techo y el suelo
if (y < 32 || y > room_height - 32) {
    vspeed = -vspeed;
}