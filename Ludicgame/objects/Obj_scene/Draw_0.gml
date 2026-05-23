// 1. Draw the current manga panel background
draw_sprite_stretched(sprite_index, 0, 0, 0, room_width, room_height);

// 2. Draw the animated transition overlay on top
if (fade_alpha > 0) {
    draw_set_color(c_black);
    draw_set_alpha(fade_alpha); // Sets transparency dynamically
    
    // Draws a black rectangle over the entire screen area
    draw_rectangle(0, 0, room_width, room_height, false);
    
    // Always reset alpha back to 1 so it doesn't mess up other graphics
    draw_set_alpha(1); 
}