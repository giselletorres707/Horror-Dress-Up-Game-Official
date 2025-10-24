// Only drag if the accessory menu is visible
if (obj_accessoriesmenu_8.visible) {

    // Start dragging when mouse is held
    if (mouse_check_button(mb_left)) {
        is_dragging = true;
    }

    // Follow mouse while dragging
    if (is_dragging) {
        x = mouse_x;
        y = mouse_y;
    }

} else {
    // If the menu becomes hidden, destroy this draggable item
    instance_destroy();
}
