if (is_dragging) {
    is_dragging = false;

    if (position_meeting(mouse_x, mouse_y, obj_body)) {

        audio_play_sound(sfx_Zipper,1,0);

        // Creates a new equipped bottom
        var new_top = instance_create_layer(obj_body.x + 10, obj_body.y - 75, "Body", obj_tops_3);
        new_top.mode = "drag";
        new_top.visible = true;
        new_top.equipped = true;  // marks as body copy

        // Destroys previous bottom if it exists
        if (obj_body.current_top != noone && instance_exists(obj_body.current_top)) {
            instance_destroy(obj_body.current_top);
        }
		
		// Removes any full-body clothing if necessary
        if (obj_body.current_fullbody != noone && instance_exists(obj_body.current_fullbody)) {
            instance_destroy(obj_body.current_fullbody);
        }
		
        // Tracks new top
        obj_body.current_top = new_top;
    }

    // Destroys the drag preview
    instance_destroy();
}