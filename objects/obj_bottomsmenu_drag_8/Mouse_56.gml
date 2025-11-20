if (is_dragging) {
    is_dragging = false;

    if (position_meeting(mouse_x, mouse_y, obj_body)) {

        audio_play_sound(sfx_Zipper,1,0);

        // Creates a new equipped bottom
        var new_bottoms = instance_create_layer(obj_body.x, obj_body.y + 30, "Body", obj_bottoms_8);
        new_bottoms.mode = "drag";
        new_bottoms.visible = true;
        new_bottoms.equipped = true;  // marks as body copy

        // Destroys previous bottom if it exists
        if (obj_body.current_bottom != noone && instance_exists(obj_body.current_bottom)) {
            instance_destroy(obj_body.current_bottom);
        }

        // Tracks new bottoms
        obj_body.current_bottom = new_bottoms;

		// Removes any full-body clothing if necessary
        with (obj_fullbody_parent) instance_destroy();
    }

    // Destroys the drag preview
    instance_destroy();
}