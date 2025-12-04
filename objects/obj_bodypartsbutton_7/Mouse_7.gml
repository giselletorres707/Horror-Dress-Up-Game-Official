// Assigns the camera to viewport 7
view_set_camera(7, global.legs_camera);

// Sets the coordinates for the viewport to appear on screen
var viewport_size = 600
view_set_wport(7, viewport_size);
view_set_hport(7, viewport_size);

// Places viewport box
view_set_xport(7, (view_get_wport(0) - viewport_size) / 2);
view_set_yport(7, (view_get_hport(0) - viewport_size) / 2);

// Focuses the camera on the specific body region
focus_camera(global.legs_camera, 1020, 600, 1290, 990);

// Makes the viewport visible
view_set_visible(7, true);

// Makes viewport background and button to exit viewport view visible
with (obj_exitbodyviewbutton) {
    visible = true;
}
with (obj_bodycameraborder) {
    visible = true;
}
with (obj_switcharmsbutton) {
    visible = false;
}

// Makes sure all other viewports are invisible
view_set_visible(1, false);
view_set_visible(2, false);
view_set_visible(3, false);
view_set_visible(4, false);
view_set_visible(5, false);
view_set_visible(6, false);