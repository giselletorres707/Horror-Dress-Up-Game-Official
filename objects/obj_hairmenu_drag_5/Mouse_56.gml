if (is_dragging) {
    is_dragging = false;

    if (position_meeting(mouse_x, mouse_y, obj_body)) {

		with (obj_hair_parent) instance_destroy();
		audio_play_sound(sfx_Pop_2, 1, 0);
instance_create_layer(obj_body.x, obj_body.y, "Instances", obj_hair_5);
    }

    instance_destroy();
}
