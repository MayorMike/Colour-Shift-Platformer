//Player Gravity

//Player speed
xsp = 0;


//Player Idle Animation
if xsp == 0 {
    //Check Player Colour and set proper sprite
    sprite_index = spr_player_idle;
    if playercolour == 1 {
        image_blend = make_color_rgb(48, 0, 252);
    }
    else if playercolour == 2 {
        image_blend = make_color_rgb(71, 253, 33);
    }
    else if playercolour == 3 {
        image_blend = make_color_rgb(228, 47, 46);
    } 
}

//Check if player is on ground
//Blue
if playercolour == 1 {
    if place_meeting(x, y+1, obj_solid_blue){
        ysp = 0;
        if (keyboard_check_pressed(vk_space)) and !isDead{
            ysp = -2;
        }
    }
}

//Green
else if playercolour == 2{
    if place_meeting(x, y+1, obj_solid_green){
        ysp = 0;
        if (keyboard_check_pressed(vk_space)) and !isDead{
            ysp = -2;
        }
    }
}

//Red
else if playercolour == 3{
    if place_meeting(x, y+1, obj_solid_red){
        ysp = 0;
        if (keyboard_check_pressed(vk_space)) and !isDead{
            ysp = -2;
        }
    }
}
else {
	if place_meeting(x, y+1, obj_solid_purple){
        ysp = 0;
        if (keyboard_check_pressed(vk_space)) and !isDead{
            ysp = -2;
        }
    }
}

if (keyboard_check_pressed(vk_lshift)){
    playercolour = playercolour + 1; 
    show_debug_message("Colour Changed!");
    show_debug_message(playercolour);
    if playercolour > 3 {
        playercolour = 1;
    }
}