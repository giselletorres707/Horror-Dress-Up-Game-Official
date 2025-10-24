if (is_dragging) {
    is_dragging = false;

    // Only place if over the body
    if (position_meeting(mouse_x, mouse_y, obj_body)) {
instance_create_layer(obj_body.x, obj_body.y, "Instances", obj_accessory1_bracelet);

    }

    // Remove draggable version
    instance_destroy();
}
