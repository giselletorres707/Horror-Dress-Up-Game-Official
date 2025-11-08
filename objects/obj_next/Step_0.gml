if (mouse_check_button_pressed(mb_left)) {
    if (current_index < array_length(dialogues)) {
        var dlg = dialogues[current_index];
        with (dlg) visible = false;
    }

    current_index += 1;

    if (current_index < array_length(dialogues)) {
        var next_dlg = dialogues[current_index];
        with (next_dlg) visible = true;
    } else {
        obj_proceed.visible = true;
		instance_destroy(); 
    }
}

//shows the dialogue in order, switches when clicked
//hides when proceed button is visible