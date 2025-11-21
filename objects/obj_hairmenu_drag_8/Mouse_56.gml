if (is_dragging) {
    is_dragging = false;

    if (position_meeting(mouse_x, mouse_y, obj_body)) {

        audio_play_sound(sfx_Zipper,1,0);

        // Creates a new equipped hair
        var new_hair = instance_create_layer(obj_body.x, obj_body.y - 255, "Body", obj_hair_8);
        new_hair.mode = "drag";
        new_hair.visible = true;
        new_hair.equipped = true;  // marks as body copy

        // Destroys previous hair if it exists
        if (obj_body.current_hair != noone && instance_exists(obj_body.current_hair)) {
            instance_destroy(obj_body.current_hair);
        }
		
        // Tracks new hair
        obj_body.current_hair = new_hair;
    }

    // Destroys the drag preview
    instance_destroy();
}