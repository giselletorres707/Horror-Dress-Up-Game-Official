if (obj_body.no_clothes) {
	visible = false;
}
else {
	if (mode == "drag" && equipped) {
	visible = true;
    x = obj_body.x - 6;
    y = obj_body.y + 250;
	depth = -20;
	}
}