// Defines the size of the viewport and the size of the larger border
var viewport_size = 600;
var border_size = 610;

// Storing the size of the viewport
var viewport_x = view_get_xport(5);
var viewport_y = view_get_yport(5);

// Converting from viewport position to GUI position
var viewporttogui_x = display_get_gui_width() / display_get_width();
var viewporttogui_y = display_get_gui_height() / display_get_height();

// Stores the viewport x and y values as variables to be used in the draw_sprite function
var gui_x = viewport_x * viewporttogui_x;
var gui_y = viewport_y * viewporttogui_y;

var offset = 5 * viewporttogui_y;

// Draws the border sprite behind the viewport, offset by a 5 pixel border on all sides
draw_sprite(spr_bodycameraborder, 0, gui_x - offset, gui_y - offset);