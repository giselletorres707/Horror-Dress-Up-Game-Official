// Sets the cursor sprite as the knife itself
cursor_sprite = spr_bandagescursor;

// Hides the default system cursor
window_set_cursor(cr_none);

// Makes the button to unequip surgical tools visible
with obj_resetcursorbutton {
	visible = true;
}