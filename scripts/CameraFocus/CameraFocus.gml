function focus_camera(body_camera, x1, y1, x2, y2){

	// Sets the rectangle dimensions as variables to be used later
	var width = x2 - x1;
	var height = y2 - y1;

	// Picks the largest width/height so the camera stays square
	var set_camera_square = max(width, height);

	// Center of the target region
	var center_x = x1 + width * 0.5;
	var center_y = y1 + height * 0.5;

	// Applies adjusted viewport size
	camera_set_view_size(body_camera, set_camera_square, set_camera_square);

	// Move so square area is centered
	camera_set_view_pos(body_camera, center_x - set_camera_square * 0.5, center_y - set_camera_square * 0.5);
}