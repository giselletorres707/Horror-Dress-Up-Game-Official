if (obj_body.no_clothes) {
	visible = false;
}
else {
	if (mode == "drag" && equipped) {
	visible = true;
    x = obj_body.x + 10;
    y = obj_body.y - 75;
	depth = -30;
	}
}