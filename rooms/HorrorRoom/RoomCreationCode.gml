// Setting up camera for full body view
// (900,200) is top left coordinate of camera
// (1420, 1080) is the bottom right coordinate of camera, so (520, 800) are the next two numbers
// 0 is the angle of the camera
// Not following any specific object, so no necessary tracking coordinates after
view_set_visible(1, false);
global.fullbody_camera = camera_create_view(900, 200, 520, 800, 0, noone, 0, 0, 0, 0);

view_set_visible(2, false);
global.head_camera = camera_create_view(1050, 200, 200, 180, 0, noone, 0, 0, 0, 0);

view_set_visible(3, false);
global.chest_camera = camera_create_view(1050, 350, 200, 200, 0, noone, 0, 0, 0, 0);

view_set_visible(4, false);
global.waist_camera = camera_create_view(1050, 480, 210, 110, 0, noone, 0, 0, 0, 0);

view_set_visible(5, false);
global.pelvis_camera = camera_create_view(1020, 530, 260, 140, 0, noone, 0, 0, 0, 0);

view_set_visible(6, false);
global.arms_camera = camera_create_view(875, 350, 555, 350, 0, noone, 0, 0, 0, 0);

view_set_visible(7, false);
global.legs_camera = camera_create_view(1020, 600, 270, 390, 0, noone, 0, 0, 0, 0);

