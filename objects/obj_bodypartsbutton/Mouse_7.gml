// Assigns the camera to viewport 1
view_set_camera(1, global.fullbody_camera);

// Sets the coordinates for the viewport to appear on screen
view_set_wport(1, 620);
view_set_hport(1, 900);

// Places viewport box
view_set_xport(1, (view_get_wport(0) - 620) / 2);
view_set_yport(1, (view_get_hport(0) - 900) / 2);

// Makes the viewport visible
view_set_visible(1, true);

// Makes viewport background and button to exit viewport view visible
with (obj_exitbodyviewbutton) {
    visible = true;
}

// Makes sure all other viewports are invisible
view_set_visible(2, false);
view_set_visible(3, false);
view_set_visible(4, false);
view_set_visible(5, false);
view_set_visible(6, false);
view_set_visible(7, false);