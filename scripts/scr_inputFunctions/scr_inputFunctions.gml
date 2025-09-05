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