if (obj_accessoriesmenu_2.visible) {

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

//dragging motion following mouse//dragging motion following mouse when button is visible
//disappears when not dragging