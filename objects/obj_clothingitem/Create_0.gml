// check that not colliding with the menu? Verify order of operations
if(physics_test_overlap(x, y, 0, obj_body)) {
	ScoringSystem.set_clothing_item(self)
	show_debug_message(self)
}