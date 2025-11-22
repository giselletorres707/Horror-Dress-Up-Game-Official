// Assigns the camera to viewport 3
view_set_camera(3, global.chest_camera);

// Sets the coordinates for the viewport to appear on screen
view_set_wport(3, 400);
view_set_hport(3, 400);

// Places viewport box
view_set_xport(3, (view_get_wport(0) - 400) / 2);
view_set_yport(3, (view_get_hport(0) - 400) / 2);

// Makes the viewport visible
view_set_visible(3, true);

// Makes viewport background and button to exit viewport view visible
with (obj_exitbodyviewbutton) {
    visible = true;
}