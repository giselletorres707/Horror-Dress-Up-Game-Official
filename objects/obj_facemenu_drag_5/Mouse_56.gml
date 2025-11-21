if (is_dragging) {
    is_dragging = false;

    if (position_meeting(mouse_x, mouse_y, obj_body)) {

        audio_play_sound(sfx_Zipper,1,0);

        // Creates a new equipped face
        var new_face = instance_create_layer(obj_body.x, obj_body.y - 318, "Body", obj_face_5);
        new_face.mode = "drag";
        new_face.visible = true;
        new_face.equipped = true;  // marks as body copy

        // Destroys previous face if it exists
        if (obj_body.current_face != noone && instance_exists(obj_body.current_face)) {
            instance_destroy(obj_body.current_face);
        }
		
        // Tracks new face
        obj_body.current_face = new_face;
    }

    // Destroys the drag preview
    instance_destroy();
}