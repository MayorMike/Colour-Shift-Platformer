switch (button_id)
{
    case 0: //Resume
        obj_controller.paused = false;
        obj_controller.update_pause();
    break;
    
case 1: //Settings
    
break;

case 2: //Quit
    game_end();
    
break;
}