if (obj_body.no_clothes) {
	visible = false;
}
else {
	if (mode == "drag" && equipped) {
	visible = true;
    x = obj_body.x + 3;
    y = obj_body.y - 100;
	depth = -30;
	}
}