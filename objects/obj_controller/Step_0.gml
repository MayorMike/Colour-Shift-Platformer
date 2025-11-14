if obj_settings.playerColour == 1{
    player_colour_1 = pc_blue;
    player_colour_2 = pc_green;
    player_colour_3 = pc_red; 
    player_colour_4 = pc_purple;
}
else if obj_settings.playerColour == 2{
    player_colour_1 = xbox_x;
    player_colour_2 = xbox_y;
    player_colour_3 = xbox_b;
    player_colour_4 = xbox_a;
}
else if obj_settings.playerColour == 3{
    player_colour_1 = ps_square;
    player_colour_2 = ps_triangle;
    player_colour_3 = ps_circle;
    player_colour_4 = ps_x;
}

if (keyboard_check_pressed(vk_escape)){
    paused = !paused;
    update_pause();
}


