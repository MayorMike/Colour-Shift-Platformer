function BindKB(_name, _key) constructor{
    bindName = _name;
    key = _key;
    
    pressed = false;
    held = false;
    released = false;
    
    pressedFn = function(){
        pressed = keyboard_check_pressed(key);
    }
    heldFn = function(){
        held = keyboard_check(key);
    }    
    releasedFn = function(){
        released = keyboard_check_released(key);
    }
}

function BindMB(_name, _key) constructor{
    bindName = _name;
    key = _key;
    
    pressed = false;
    held = false;
    released = false;
    
    pressedFn = function(){
        pressed = mouse_check_button_pressed(key);
    }
    heldFn = function(){
        held = mouse_check_button(key);
    }    
    releasedFn = function(){
        released = mouse_check_button_released(key);
    }
}

function BindMW(_name, _dir) constructor{
    bindName = _name;
    dir = sign(_dir);
    
    pressed = false;
    held = false;
    released = false;
    
    pressedFn = function(){
        if (dir < 0) {
            pressed = mouse_wheel_up();
        }
        else if (dir > 0){
            pressed = mouse_wheel_down();
        }
        else{
            pressed = false;
        }
    }
    heldFn = function(){
        held = false;
    }    
    releasedFn = function(){
        released = false;
    }
}

function BindGPB(_name, _key) constructor{
    bindName = _name;
    key = _key;
    
    pressed = false;
    held = false;
    released = false;
    
    pressedFn = function(){
        pressed = gamepad_button_check_pressed(0, key);
    }
    heldFn = function(){
        held = gamepad_button_check(0, key);
    }    
    releasedFn = function(){
        released = gamepad_button_check_released(0, key);
    }
}

function BindGPA(_name, _axis, _value) constructor {
    bindName = _name;
    axis = _axis;
    value = _value;
    
    pressed = false;
    held = false;
    lastHeld = false;
    released = false;
    
    pressedFn = function (){
    if (lastHeld == false and held == true){
    pressed = true;
    }
    else{
        pressed = false;
        }
    }
    heldFn = function (){
        lastHeld = held;
        if (value < 0){
            held = (gamepad_axis_value(0, axis) < value);
        }
        else if (value > 0){ 
            held = (gamepad_axis_value(0, axis) > value);
        }
        else {
            held = false;
        }
    }
    releasedFn = function() {
        if (lastHeld == true and held == false){
            released = true;
        }
        else {
            released = false;
        }
    }
}


function inputUpdate(){
    with (obj_input) {
        for (var _i = 0; _i < array_length(keybinds); _i++){
            keybinds[_i].heldFn();
            keybinds[_i].pressedFn();
            keybinds[_i].releasedFn();
        }
    }
}

function inputCheckPressed(_name) {
    with (obj_input){
        for (var _i = 0; _i < array_length(keybinds); _i++) {
            if (keybinds[_i].bindName == _name){
                return(keybinds[_i].pressed);
            }
        }
    }
}

function inputCheckHeld(_name) {
    with (obj_input){
        for (var _i = 0; _i < array_length(keybinds); _i++) {
            if (keybinds[_i].bindName == _name){
                return(keybinds[_i].held);
            }
        }
    }
}

function inputCheckReleased(_name) {
    with (obj_input){
        for (var _i = 0; _i < array_length(keybinds); _i++) {
            if (keybinds[_i].bindName == _name){
                return(keybinds[_i].released);
            }
        }
    }
}

function inputReplace(_name, _newKeybind){
    for (var _i = 0; _i < array_length(obj_input.keybinds); _i++){
        if (obj_input.keybinds[_i].bindName == _name){
            obj_input.keybinds[_i] = _newKeybind;
            return;
        }
    }
}