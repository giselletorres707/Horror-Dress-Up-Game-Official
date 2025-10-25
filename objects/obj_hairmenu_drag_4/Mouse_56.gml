if (is_dragging) {
    is_dragging = false;

    if (position_meeting(mouse_x, mouse_y, obj_body)) {
        instance_create_layer(obj_body.x, obj_body.y, "Instances", obj_hair_4);
		
		with (obj_hair_parent) instance_destroy();
instance_create_layer(obj_body.x, obj_body.y, "Instances", obj_hair_4);
    }

    instance_destroy();
}
