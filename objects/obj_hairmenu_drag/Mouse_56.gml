if (is_dragging) {
    is_dragging = false;

    if (position_meeting(mouse_x, mouse_y, obj_body)) {
        instance_create_layer(obj_body.x, obj_body.y, "Instances", obj_hair);
				
with (obj_hair_parent) instance_destroy();
instance_create_layer(obj_body.x, obj_body.y, "Instances", obj_hair);
    }

    instance_destroy();
}
