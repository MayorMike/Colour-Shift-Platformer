//Player Gravity
ysp += 0.1;
//Player speed
xsp = 0;

if (keyboard_check(vk_left) or keyboard_check(ord("A"))) and !isDead{
    xsp = -1;
    //Check Player Colour
    if playercolour == 1 {
        sprite_index = spr_player_left_blue;
    }
    else if playercolour == 2 {
        sprite_index = spr_player_left_green;
    }
    else if playercolour == 3 {
        sprite_index = spr_player_left_red;
    }
    
}

if (keyboard_check(vk_right) or keyboard_check(ord("D"))) and !isDead{
    xsp = +1;
    //Check Player Colour
    if playercolour == 1 {
        sprite_index = spr_player_right_blue;
    }
    else if playercolour == 2 {
        sprite_index = spr_player_right_green;
    }
    else if playercolour == 3 {
        sprite_index = spr_player_right_red;
    }
    
}

if xsp == 0 {
    //Check Player Colour and set proper sprite
    if playercolour == 1 {
        sprite_index = spr_player_idle_blue;
    }
    else if playercolour == 2 {
        sprite_index = spr_player_idle_green;
    }
    else if playercolour == 3 {
        sprite_index = spr_player_idle_red;
    } 
}

//Check if player is on ground
//Blue
if playercolour == 1 {
    if place_meeting(x, y+1, obj_solid_blue){
        ysp = 0;
        if (keyboard_check(vk_space)) and !isDead{
            ysp = -2;
        }
    }
}

//Green
else if playercolour == 2{
    if place_meeting(x, y+1, obj_solid_green){
        ysp = 0;
        if (keyboard_check(vk_space)) and !isDead{
            ysp = -2;
        }
    }
}

//Red
else if playercolour == 3{
    if place_meeting(x, y+1, obj_solid_red){
        ysp = 0;
        if (keyboard_check(vk_space)) and !isDead{
            ysp = -2;
        }
    }
}

//Check floor/wall collision
//Blue
if playercolour == 1 {
    move_and_collide(xsp, ysp, obj_solid_blue);
}
//Green
else if playercolour == 2 {
    move_and_collide(xsp, ysp, obj_solid_green);
}
//Red
else if playercolour == 3 {
    move_and_collide(xsp, ysp, obj_solid_red);
}

if (keyboard_check_pressed(vk_lshift)){
    playercolour = playercolour + 1; 
    show_debug_message("Colour Changed!");
    show_debug_message(playercolour);
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