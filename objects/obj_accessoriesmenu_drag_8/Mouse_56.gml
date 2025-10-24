if (is_dragging) {
    is_dragging = false;

    // If released on the body, create permanent bracelet
    if (position_meeting(mouse_x, mouse_y, obj_body)) {
        instance_create_layer(obj_body.x, obj_body.y, "Instances", obj_accessories_8);
    }

    // Remove draggable after releasing
    instance_destroy();
}
