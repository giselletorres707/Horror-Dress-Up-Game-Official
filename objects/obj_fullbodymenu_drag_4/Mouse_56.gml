if (is_dragging) {
    is_dragging = false;

    if (position_meeting(mouse_x, mouse_y, obj_body)) {
		
with (obj_fullbody_parent) instance_destroy();
with (obj_tops_parent) instance_destroy();
with (obj_bottoms_parent) instance_destroy();
audio_play_sound(sfx_clothes_ripple,1, 0);
instance_create_layer(obj_body.x, obj_body.y, "Instances", obj_fullbody_4);
    }

    instance_destroy();
}

