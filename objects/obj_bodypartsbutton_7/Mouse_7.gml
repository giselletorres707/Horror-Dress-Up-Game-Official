// Assigns the camera to viewport 2
view_set_camera(2, global.head_camera);

// Sets the coordinates for the viewport to appear on screen
view_set_wport(2, 400);
view_set_hport(2, 380);

// Places viewport box
view_set_xport(2, (view_get_wport(0) - 400) / 2);
view_set_yport(2, (view_get_hport(0) - 380) / 2);

// Makes the viewport visible
view_set_visible(2, true);

// Makes viewport background and button to exit viewport view visible
with (obj_exitbodyviewbutton) {
    visible = true;
}