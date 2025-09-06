if (keyboard_check_pressed(vk_escape)){
    readingKeybind = true;
}

if (readingKeybind == true){
    text = "Reading...";
    var _newKeybind = inputChangeKeybind("Move Right");
    if(_newKeybind != -1){
        inputReplace("Move Right",_newKeybind);
        readingKeybind = false;
    }
}
else {
    text = "";
}