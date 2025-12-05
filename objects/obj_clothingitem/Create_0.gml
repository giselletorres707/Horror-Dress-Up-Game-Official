// Make sure we get our own copy of the theme array (not shared)
if (is_array(theme)) {
    var old = theme;
    var len = array_length(old);
    theme = array_create(len);

    for (var i = 0; i < len; i++) {
        theme[i] = old[i];
    }
}

// check that not colliding with the menu? Verify order of operations
if(physics_test_overlap(x, y, 0, obj_body)) {
	ScoringSystem.set_clothing_item(self)
	show_debug_message(self)
}