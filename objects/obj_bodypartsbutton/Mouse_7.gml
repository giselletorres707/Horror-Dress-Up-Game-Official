// Makes viewport background and button to exit viewport view invisible
with (obj_exitbodyviewbutton) {
    visible = false;
}
with (obj_bodycameraborder) {
    visible = false;
}
with (obj_switcharmsbutton) {
    visible = false;
}

// Makes sure all viewports are invisible
view_set_visible(1, false);
view_set_visible(2, false);
view_set_visible(3, false);
view_set_visible(4, false);
view_set_visible(5, false);
view_set_visible(6, false);
view_set_visible(7, false);