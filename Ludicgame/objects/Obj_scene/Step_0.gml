// 1. Detect click only if we are not already animating
if (mouse_check_button_pressed(mb_left) && fade_state == "idle") {
    fade_state = "fading_out"; 
}

// 2. Handle the Fade Animation Logic
if (fade_state == "fading_out") {
    fade_alpha += fade_speed; // Make the screen darker
    
    // Once the screen is 100% black, change the image safely behind it
    if (fade_alpha >= 1) {
        fade_alpha = 1;
        current_panel += 1; // Move to next panel index
        
        if (current_panel < array_length(panels)) {
            sprite_index = panels[current_panel]; // Change sprite
            fade_state = "fading_in";             // Start revealing it
        } else {
            room_goto(rm_mezclador);        // End of cutscene
        }
    }
}

if (fade_state == "fading_in") {
    fade_alpha -= fade_speed; // Make the black screen disappear
    
    if (fade_alpha <= 0) {
        fade_alpha = 0;
        fade_state = "idle"; // Ready for the next click!
    }
}