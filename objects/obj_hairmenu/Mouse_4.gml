// Only create draggable item if this menu is visible
if (other.visible) {  // 'other' is this button instance
    instance_create_layer(mouse_x, mouse_y, "Instances", obj_hairmenu_drag);
}
