if (is_dragging) {
    is_dragging = false;

    if (position_meeting(mouse_x, mouse_y, obj_body)) {
		
		with (obj_shoes_parent) instance_destroy();
		audio_play_sound(sfx_Heel_Clicks,1, 0);
instance_create_layer(obj_body.x, obj_body.y, "Instances", obj_shoes);
    }

    instance_destroy();
}
