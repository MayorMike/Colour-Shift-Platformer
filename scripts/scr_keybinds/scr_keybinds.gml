function initializeKeybinds(){
    with (obj_input){
        keybinds = [
        new BindKB("KBRight", vk_right),
        new BindKB("KBLeft", vk_left),
        new BindKB("KBUp", vk_up),
        new BindKB("KBDown", vk_down),
        new BindKB("KBJump", vk_space),
        new BindKB("KBShiftColour", vk_lshift),
        new BindKB("KBShiftBlue", ord("1")),
        new BindKB("KBShiftGreen", ord("2")),
        new BindKB("KBShiftRed", ord("3")),
        new BindKB("KBMenuUp", vk_up),
        new BindKB("KBMenuDown", vk_down),
        new BindKB("KBMenuAccept", vk_enter),
        
        new BindGPA("GPRight", gp_axislh, 0.5),
        new BindGPA("GPLeft", gp_axislh, -0.5),
        new BindGPA("GPUp", gp_axislv, 0.5),
        new BindGPA("GPDown", gp_axislv,-0.5),
        new BindGPB("GPJump", gp_face1),
        new BindGPB("GPShiftColour", gp_shoulderl),
        new BindGPB("GPShiftBlue", gp_face3),
        new BindGPB("GPShiftGreen", gp_face4),
        new BindGPB("GPShiftRed", gp_face2),
        new BindGPA("GPMenuUp", gp_axislv, -0.5),
        new BindGPA("GPMenuDown", gp_axislv, 0.5),
        new BindGPB("GPMenuAccept", gp_face1),
        ];
    }
}

function keybindings() {
    global.moveLeft = (inputCheckHeld("KBLeft") or inputCheckHeld("GPLeft"));
    global.moveRight = (inputCheckHeld("KBRight") or inputCheckHeld("GPRight"));
    global.moveUp = (inputCheckHeld("KBUp") or inputCheckHeld("GPUp"));
    global.moveDown = (inputCheckHeld("KBDown") or inputCheckHeld("GPDown"));
    global.moveJump = (inputCheckPressed("KBJump") or inputCheckPressed("GPJump"));
    global.shiftColour = (inputCheckPressed("KBShiftColour") or inputCheckPressed("GPShiftColour"));
    global.shiftBlue = (inputCheckPressed("KBShiftBlue") or inputCheckPressed("GPShiftBlue"));
    global.shiftGreen = (inputCheckPressed("KBShiftGreen") or inputCheckPressed("GPShiftGreen"));
    global.shiftRed = (inputCheckPressed("KBShiftRed") or inputCheckPressed("GPShiftRed"));
    global.menuUp = (inputCheckPressed("KBMenuUp") or inputCheckPressed("GPMenuUp"));
    global.menuDown = (inputCheckPressed("KBMenuDown") or inputCheckPressed("GPMenuDown"));
    global.menuAccept = (inputCheckPressed("KBMenuAccept") or inputCheckPressed("GPMenuAccept"));
}