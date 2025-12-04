// Assigns the camera to viewport 3
view_set_camera(2, global.chest_camera);

// Sets the coordinates for the viewport to appear on screen
var viewport_size = 600
view_set_wport(2, viewport_size);
view_set_hport(2, viewport_size);

// Places viewport box
view_set_xport(2, (view_get_wport(0) - viewport_size) / 2);
view_set_yport(2, (view_get_hport(0) - viewport_size) / 2);

// Focuses the camera on the specific body region
focus_camera(global.chest_camera, 1050, 350, 1250, 550);

// Makes the viewport visible
view_set_visible(2, true);

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
view_set_visible(3, false);
view_set_visible(4, false);
view_set_visible(5, false);
view_set_visible(6, false);
view_set_visible(7, false);