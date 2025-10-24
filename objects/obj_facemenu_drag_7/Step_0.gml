if (obj_facemenu_7.visible) {

    if (mouse_check_button(mb_left)) {
        is_dragging = true;
    }

    if (is_dragging) {
        x = mouse_x;
        y = mouse_y;
    }

} else {
    instance_destroy();
}
