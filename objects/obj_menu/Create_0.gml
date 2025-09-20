#macro MAIN 0
#macro SETTINGS 1
#macro CONTROLS 2
#macro COLOURS 3

global.dsm_settings = ds_map_create();
#macro set global.dsm_settings

width = 64;
height = 104;

op_border = 16;
op_space = 16;

pos = 0;

//Menu Screen
option[MAIN, 0] = "Start Game";
option[MAIN, 1] = "Settings";
option[MAIN, 2] = "Exit Game";

//Settings Screen
option [SETTINGS, 0] = "Fullscreen";
option [SETTINGS, 1] = "Controls";
option [SETTINGS, 2] = "Colours"
option [SETTINGS, 3] = "Back";

//Controls/Keybinds Screen
option[CONTROLS, 0] = "Move Left";
option[CONTROLS, 1] = "Move Right";
option[CONTROLS, 2] = "Jump";
option[CONTROLS, 3] = "Shift Colour";
option[CONTROLS, 4] = "Colour 1";
option[CONTROLS, 5] = "Colour 2";
option[CONTROLS, 6] = "Colour 3";
option[CONTROLS, 7] = "Menu Up";
option[CONTROLS, 8] = "Menu Down";
option[CONTROLS, 9] = "Accept Key";
option[CONTROLS, 10] = "Back";

//Colour Options
option [COLOURS, 0] = "PC Colours";
option [COLOURS, 1] = "Xbox Colours";
option [COLOURS, 2] = "PlayStation Colours";
option [COLOURS, 3] = "Back";

op_length = 0;
menu_level = 0;


//Control Variables

