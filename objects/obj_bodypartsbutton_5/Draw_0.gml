draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_self();
draw_set_font(cuttofit_font);
var font_color = #59291f;
draw_set_color(font_color);
draw_text_transformed(x, y, label, 1, 1, 0);