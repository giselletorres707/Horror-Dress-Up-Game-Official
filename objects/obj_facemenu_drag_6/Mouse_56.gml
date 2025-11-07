if (is_dragging) {
    is_dragging = false;

    if (position_meeting(mouse_x, mouse_y, obj_body)) {
        instance_create_layer(obj_body.x, obj_body.y, "Instances", obj_face_6);
			audio_play_sound(sfx_Pop_2, 1, false);
    }

    instance_destroy();
}

