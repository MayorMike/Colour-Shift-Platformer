function initializeKeybinds(){
    with (obj_input){
        keybinds = [
        new BindKB("Move Right", vk_right),
        new BindKB("Move Left", vk_left),
        new BindKB("Move Up", vk_up),
        new BindKB("Move Down", vk_down),
        new BindKB("Move Jump", vk_space),
        new BindKB("Shift Colour", vk_lshift),
        
        ];
    }
}

function keybindings() {
    global.moveLeft = inputCheckHeld("Move Left");
    global.moveRight = inputCheckHeld("Move Right");
    global.moveUp = inputCheckHeld("Move Up");
    global.moveDown = inputCheckHeld("Move Down")
    global.moveJump = inputCheckPressed("Move Jump");
    global.shiftColour = inputCheckPressed("Shift Colour");
}