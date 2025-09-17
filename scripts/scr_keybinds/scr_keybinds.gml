function initializeKeybinds(){
    with (obj_input){
        keybinds = [
        new BindKB("Move Right", vk_right),
        new BindKB("Move Left", vk_left),
        new BindKB("Move Up", vk_up),
        new BindKB("Move Down", vk_down),
        new BindKB("Move Jump", vk_space),
        new BindKB("Shift Colour", vk_lshift),
        new BindKB("Shift Blue", ord("1")),
        new BindKB("Shift Green", ord("2")),
        new BindKB("Shift Red", ord("3")),
        new BindKB("Menu Up", vk_up),
        new BindKB("Menu Down", vk_down),
        new BindKB("Menu Accept", vk_enter),
        
        ];
    }
}

function keybindings() {
    global.moveLeft = inputCheckHeld("Move Left");
    global.moveRight = inputCheckHeld("Move Right");
    global.moveUp = inputCheckHeld("Move Up");
    global.moveDown = inputCheckHeld("Move Down");
    global.moveJump = inputCheckPressed("Move Jump");
    global.shiftColour = inputCheckPressed("Shift Colour");
    global.shiftBlue = inputCheckPressed("Shift Blue");
    global.shiftGreen = inputCheckPressed("Shift Green");
    global.shiftRed = inputCheckPressed("Shift Red");
    global.menuUp = inputCheckPressed("Menu Up");
    global.menuDown = inputCheckPressed("Menu Down");
    global.menuAccept = inputCheckPressed("Menu Accept");
}