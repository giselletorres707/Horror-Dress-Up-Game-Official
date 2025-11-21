if (is_dragging) {
    is_dragging = false;

    if (position_meeting(mouse_x, mouse_y, obj_body)) {

        audio_play_sound(sfx_Zipper,1,0);

        // Creates a new equipped bottom
        var new_shoes = instance_create_layer(obj_body.x, obj_body.y + 30, "Body", obj_shoes_2);
        new_shoes.mode = "drag";
        new_shoes.visible = true;
        new_shoes.equipped = true;  // marks as body copy

        // Destroys previous bottom if it exists
        if (obj_body.current_shoes != noone && instance_exists(obj_body.current_shoes)) {
            instance_destroy(obj_body.current_shoes);
        }
		
        // Tracks new shoes
        obj_body.current_shoes = new_shoes;
    }

    // Destroys the drag preview
    instance_destroy();
}