// Setting up camera for full body view
// (900,200) is top left coordinate of camera
// (1420, 1080) is the bottom right coordinate of camera, so (520, 800) are the next two numbers
// 0 is the angle of the camera
// Not following any specific object, so no necessary tracking coordinates after
view_set_visible(1, false);
global.fullbody_camera = camera_create_view(900, 200, 520, 800, 0, noone, 0, 0, 0, 0);

