if (is_dragging) {
    is_dragging = false;

    if (position_meeting(mouse_x, mouse_y, obj_body)) {

        audio_play_sound(sfx_Zipper,1,0);

        // Creates a new equipped bottom
        var new_fullbody = instance_create_layer(obj_body.x, obj_body.y + 20, "Body", obj_fullbody_4);
        new_fullbody.mode = "drag";
        new_fullbody.visible = true;
        new_fullbody.equipped = true;  // marks as body copy

        // Destroys previous full body, top, or bottom if they exist
        if (obj_body.current_fullbody != noone && instance_exists(obj_body.current_fullbody)) {
            instance_destroy(obj_body.current_fullbody);
        }
		if (obj_body.current_bottom != noone && instance_exists(obj_body.current_bottom)) {
            instance_destroy(obj_body.current_bottom);
        }
		if (obj_body.current_top != noone && instance_exists(obj_body.current_top)) {
            instance_destroy(obj_body.current_top);
        }

        // Tracks new full body
        obj_body.current_fullbody = new_fullbody;

    }

    // Destroys the drag preview
    instance_destroy();
}