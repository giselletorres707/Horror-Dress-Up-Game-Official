if (is_dragging) {
    is_dragging = false;

    if (position_meeting(mouse_x, mouse_y, obj_body)) {
		
				with (obj_fullbody_parent) instance_destroy();
instance_create_layer(obj_body.x, obj_body.y, "Instances", obj_fullbody_7);
    }

    instance_destroy();
}
