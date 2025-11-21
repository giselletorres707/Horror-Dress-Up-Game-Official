if (is_dragging) {
    is_dragging = false;

    if (position_meeting(mouse_x, mouse_y, obj_body)) {

        audio_play_sound(sfx_Zipper,1,0);

        // Creates a new equipped accessory
        var new_accessory = instance_create_layer(obj_body.x, obj_body.y + 27, "Body", obj_accessories);
        new_accessory.mode = "drag";
        new_accessory.visible = true;
        new_accessory.equipped = true;  // marks as body copy

        // Destroys previous accessory if it exists
        if (obj_body.current_accessory != noone && instance_exists(obj_body.current_accessory)) {
            instance_destroy(obj_body.current_accessory);
        }
		
		
        // Tracks new accessory
        obj_body.current_accessory = new_accessory;
    }

    // Destroys the drag preview
    instance_destroy();
}