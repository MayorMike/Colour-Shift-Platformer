//Check Player Colour and set proper sprite
sprite_index = spr_player_idle;
if playercolour == 1 {
    image_blend = obj_controller.player_colour_1;
}
else if playercolour == 2 {
    image_blend = obj_controller.player_colour_2;
}
else if playercolour == 3 {
    image_blend = obj_controller.player_colour_3;
} 


if (keyboard_check_pressed(vk_lshift)){
    playercolour = playercolour + 1; 
    show_debug_message("Colour Changed!");
    show_debug_message(playercolour);
    if playercolour > 3 {
        playercolour = 1;
    }
}

//Temporary Change Colour Test
if keyboard_check_pressed(ord("I")){
    obj_settings.playerColour = 1;
    show_debug_message("Using PC Colours!");
}
if keyboard_check_pressed(ord("O")){
    obj_settings.playerColour = 2;
    show_debug_message("Using Xbox Colours!");
}
if keyboard_check_pressed(ord("P")){
    obj_settings.playerColour = 3;
    show_debug_message("Using PlayStation Colours!");
}