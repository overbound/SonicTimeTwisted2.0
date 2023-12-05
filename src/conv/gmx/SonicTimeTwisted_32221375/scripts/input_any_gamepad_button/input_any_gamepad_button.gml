//input_any_gamepad_button
with objProgram.inputManager {
    for(var i = 0; i < padcount; i++) {
        for(var gp_index = gp_face1; gp_index <= gp_padr; gp_index++) {
           if gamepad_button_check_pressed(i, gp_index) {
              return gp_index;
           }
        }
    }
    
    return -1;
}
