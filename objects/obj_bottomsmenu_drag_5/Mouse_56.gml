if (is_dragging) {
    is_dragging = false;

    if (position_meeting(mouse_x, mouse_y, obj_body)) {
		with (obj_bottoms_parent) instance_destroy();
		with (obj_fullbody_parent) instance_destroy();
	audio_play_sound(sfx_Zipper,1, 0);
instance_create_layer(obj_body.x, obj_body.y, "Instances", obj_bottoms_5);
    }

    instance_destroy();
}

