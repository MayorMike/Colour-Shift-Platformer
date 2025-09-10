//Player Gravity
ysp += 0.1;
//Player speed
xsp = 0;


//Move Left
if (global.moveLeft) and !isDead{
    xsp = -1;
    //Check Player Colour
    sprite_index = spr_player_left
if playercolour == 1 {
        image_blend = obj_controller.player_colour_1;
    }
    else if playercolour == 2 {
        image_blend = obj_controller.player_colour_2;
    }
    else if playercolour == 3 {
        image_blend = obj_controller.player_colour_3;
    } 
    
}

//Move Right
if (global.moveRight) and !isDead{
    xsp = +1;
    //Check Player Colour
    sprite_index = spr_player_right
if playercolour == 1 {
        image_blend = obj_controller.player_colour_1;
    }
    else if playercolour == 2 {
        image_blend = obj_controller.player_colour_2;
    }
    else if playercolour == 3 {
        image_blend = obj_controller.player_colour_3;
    }  
    
}

//Player Idle Animation
if xsp == 0 {
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
}

//Check if player is on ground
//Blue
if playercolour == 1 {
    if place_meeting(x, y+1, [obj_solid_blue, obj_solid_purple]){
        ysp = 0;
        if (global.moveJump) and !isDead{
            ysp = -2;
        }
    }
}

//Green
else if playercolour == 2{
    if place_meeting(x, y+1, [obj_solid_green, obj_solid_purple]){
        ysp = 0;
        if (global.moveJump) and !isDead{
            ysp = -2;
        }
    }
}

//Red
else if playercolour == 3{
    if place_meeting(x, y+1, [obj_solid_red, obj_solid_purple]){
        ysp = 0;
        if (global.moveJump) and !isDead{
            ysp = -2;
        }
    }
}

//Check floor/wall collision
//Blue
if playercolour == 1 {
    move_and_collide(xsp, ysp, [obj_solid_blue, obj_solid_purple]);
}
//Green
else if playercolour == 2 {
    move_and_collide(xsp, ysp, [obj_solid_green, obj_solid_purple]);
}
//Red
else if playercolour == 3 {
    move_and_collide(xsp, ysp, [obj_solid_red, obj_solid_purple]);
}

if (global.shiftColour){
    playercolour = playercolour + 1; 
    show_debug_message("Colour Changed!");
    if playercolour > 3 {
        playercolour = 1;
    }
}


//Collect flag - go to next level
if (place_meeting(x, y, obj_flag)){
    room_goto_next();
}

//Touch spikes - die (or restart room for now)
if (place_meeting(x, y, obj_spikes)){
room_restart();
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