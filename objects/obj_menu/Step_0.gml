//Get input
up_key = global.menuUp;
down_key = global.menuDown;
accept_key = global.menuAccept;

//Store number of options in current menu
op_length = array_length(option[menu_level]);


//Move through menu
pos += down_key - up_key;
if pos >= op_length{pos = 0};
if pos < 0 {pos = op_length - 1};
   
//Using Options
if accept_key {
    var _sml = menu_level; 
    
    switch(menu_level){
        //Pause Menu
        case 0:
        switch(pos){
            //Start Game
            case 0: room_goto_next(); break;
            //Settings
            case 1: menu_level = 1; break;
            //Exit Game
            case 2: game_end(); break;
        }
        break;
        
    //Settings
    case 1:
        switch(pos){
            //Fullscreen
            case 0:
                break;
            
            //Controls
            case 1:  
                break;
            //Colours
            case 2:
                break;
            //Back
            case 3: menu_level = 0; break;
        }
        
    }
    //set position back
    if _sml != menu_level{pos = 0};
        //Correct option length
        op_length = array_length(option[menu_level]);
}
