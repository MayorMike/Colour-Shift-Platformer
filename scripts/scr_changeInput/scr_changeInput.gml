
//Master keybind check - Good for setting keybind regardless if it is Keyboard/Mouse or Gamepad checking
//Calling only inputChangeKeyboard or inputChangeGamepad will only change *that* keybind type
function inputChangeKeybind(_name){
    var _keybind = inputChangeKeyboard(_name);
    if (_keybind == -1){
        _keybind = inputChangeGamepad(_name);
    }
    return(_keybind);
}

function inputChangeKeyboard(_name){
    //Keyboard Check
    if (keyboard_check_pressed(vk_anykey)){
        if (keyboard_lastkey != vk_escape){
            var _struct = new BindKB(_name, keyboard_lastkey);
            return(_struct);
        }
    }
    //Mouse Check
    if (mouse_check_button_pressed(mb_any)){
        var _struct = new BindMB(_name, mouse_lastbutton);
        return(_struct);
    }
    
    // Mouse Wheel Up Check
    if (mouse_wheel_up()){
        var _struct = new BindMW(_name, -1);
        return(_struct);
    }
    // Mouse Wheel Down Check
    if (mouse_wheel_down()){
        var _struct = new BindMW(_name, 1);
        return(_struct);
    }
    return(-1);
}

function inputChangeGamepad(_name){
    //Gamepad Buttons
    if (gamepad_button_check_pressed(0, gp_padr)) {return (new BindGPB(_name, gp_padr))};
    if (gamepad_button_check_pressed(0, gp_padl)) {return (new BindGPB(_name, gp_padl))}; 
    if (gamepad_button_check_pressed(0, gp_padu)) {return (new BindGPB(_name, gp_padu))};
    if (gamepad_button_check_pressed(0, gp_padd)) {return (new BindGPB(_name, gp_padd))};
    if (gamepad_button_check_pressed(0, gp_face1)) {return (new BindGPB(_name, gp_face1))};
    if (gamepad_button_check_pressed(0, gp_face2)) {return (new BindGPB(_name, gp_face2))};
    if (gamepad_button_check_pressed(0, gp_face3)) {return (new BindGPB(_name, gp_face3))};
    if (gamepad_button_check_pressed(0, gp_face4)) {return (new BindGPB(_name, gp_face4))};
    if (gamepad_button_check_pressed(0, gp_select)) {return (new BindGPB(_name, gp_select))};
    if (gamepad_button_check_pressed(0, gp_start)) {return (new BindGPB(_name, gp_start))};
    if (gamepad_button_check_pressed(0, gp_shoulderl)) {return (new BindGPB(_name, gp_shoulderl))};
    if (gamepad_button_check_pressed(0, gp_shoulderr)) {return (new BindGPB(_name, gp_shoulderr))};
    if (gamepad_button_check_pressed(0, gp_shoulderlb)) {return (new BindGPB(_name, gp_shoulderlb))};
    if (gamepad_button_check_pressed(0, gp_shoulderrb)) {return (new BindGPB(_name, gp_shoulderrb))};
    if (gamepad_button_check_pressed(0, gp_stickl)) {return (new BindGPB(_name, gp_stickl))};
    if (gamepad_button_check_pressed(0, gp_stickr)) {return (new BindGPB(_name, gp_stickr))};
        
    //Left Gamepad Axis
    if (gamepad_axis_value(0, gp_axislh) > 0.8) {return (new BindGPA(_name, gp_axislh, 0.5))};
    if (gamepad_axis_value(0, gp_axislh) < -0.8) {return (new BindGPA(_name, gp_axislh, -0.5))};
    if (gamepad_axis_value(0, gp_axislv) > 0.8) {return (new BindGPA(_name, gp_axislv, 0.5))};
    if (gamepad_axis_value(0, gp_axislv) < -0.8) {return (new BindGPA(_name, gp_axislv, -0.5))};
    //Right Gamepad Axis 
    if (gamepad_axis_value(0, gp_axisrh) > 0.8) {return (new BindGPA(_name, gp_axisrh, 0.5))};
    if (gamepad_axis_value(0, gp_axisrh) < -0.8) {return (new BindGPA(_name, gp_axisrh, -0.5))};
    if (gamepad_axis_value(0, gp_axisrv) > 0.8) {return (new BindGPA(_name, gp_axisrv, 0.5))};
    if (gamepad_axis_value(0, gp_axisrv) < -0.8) {return (new BindGPA(_name, gp_axisrv, -0.5))};
        
    return (-1);
}