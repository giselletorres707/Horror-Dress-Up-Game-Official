// Assigns the camera to viewport 4
view_set_camera(4, global.waist_camera);

// Sets the coordinates for the viewport to appear on screen
view_set_wport(4, 310);
view_set_hport(4, 210);

// Places viewport box
view_set_xport(4, (view_get_wport(0) - 310) / 2);
view_set_yport(4, (view_get_hport(0) - 210) / 2);

// Makes the viewport visible
view_set_visible(4, true);

// Makes viewport background and button to exit viewport view visible
with (obj_exitbodyviewbutton) {
    visible = true;
}

// Makes sure all other viewports are invisible
view_set_visible(1, false);
view_set_visible(2, false);
view_set_visible(3, false);
view_set_visible(5, false);
view_set_visible(6, false);
view_set_visible(7, false);