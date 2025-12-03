if (obj_body.no_clothes) {
	visible = false;
}
else {
	if (mode == "drag" && equipped) {
	visible = true;
    x = obj_body.x + 0;
    y = obj_body.y - 305;
	depth = -20;
	}
}