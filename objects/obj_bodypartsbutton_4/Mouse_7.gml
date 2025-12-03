// Assigns the camera to viewport 5
view_set_camera(5, global.pelvis_camera);

// Sets the coordinates for the viewport to appear on screen
view_set_wport(5, 360);
view_set_hport(5, 240);

// Places viewport box
view_set_xport(5, (view_get_wport(0) - 360) / 2);
view_set_yport(5, (view_get_hport(0) - 240) / 2);

// Makes the viewport visible
view_set_visible(5, true);

// Makes viewport background and button to exit viewport view visible
with (obj_exitbodyviewbutton) {
    visible = true;
}

// Makes sure all other viewports are invisible
view_set_visible(1, false);
view_set_visible(2, false);
view_set_visible(3, false);
view_set_visible(4, false);
view_set_visible(6, false);
view_set_visible(7, false);