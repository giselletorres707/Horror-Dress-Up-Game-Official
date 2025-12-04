// Makes it so that when the player clicks the tools button, the Horror Room will be opened
room_goto(DressUpRoom);

obj_body.no_clothes = false;
with (obj_body.current_accessory) {
	visible = true;
}
with (obj_body.current_bottom) {
	visible = true;
}
with (obj_body.current_face) {
	visible = true;
}
with (obj_body.current_fullbody) {
	visible = true;
}
with (obj_body.current_hair) {
	visible = true;
}
with (obj_body.current_shoes) {
	visible = true;
}
with (obj_body.current_top) {
	visible = true;
}