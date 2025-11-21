if (is_dragging) {
    is_dragging = false;

    if (position_meeting(mouse_x, mouse_y, obj_body)) {

        audio_play_sound(sfx_Zipper,1,0);

        // Creates a new equipped bottom
        var new_top = instance_create_layer(obj_body.x, obj_body.y - 95, "Body", obj_tops_7);
        new_top.mode = "drag";
        new_top.visible = true;
        new_top.equipped = true;  // marks as body copy

        // Destroys previous bottom if it exists
        if (obj_body.current_top != noone && instance_exists(obj_body.current_top)) {
            instance_destroy(obj_body.current_top);
        }

        // Tracks new bottoms
        obj_body.current_top = new_top;

		// Removes any full-body clothing if necessary
        with (obj_fullbody_parent) instance_destroy();
    }

    // Destroys the drag preview
    instance_destroy();
}