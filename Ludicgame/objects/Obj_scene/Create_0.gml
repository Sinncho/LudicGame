panels = [
    spr_manga_panel1,
    spr_manga_panel2,
    spr_manga_panel3
];

current_panel = 0;
sprite_index = panels[current_panel];

// --- Animation Variables ---
fade_alpha = 0;        // 0 = completely transparent, 1 = completely black
fade_state = "idle";   // Can be "idle", "fading_out" (turning black), or "fading_in" (revealing)
fade_speed = 0.05;     // How fast it fades (higher = faster)