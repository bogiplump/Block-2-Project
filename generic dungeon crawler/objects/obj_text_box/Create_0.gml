/// @description Variables

box = spr_textbox;
namebox = spr_name_box;

box_width = sprite_get_width(box);
box_height = sprite_get_height(box);
namebox_width = sprite_get_width(namebox);
namebox_height = sprite_get_height(namebox);

box_x = (640 - box_width) * 0.5;
box_y = (360 * 0.98) - box_height;
namebox_x = box_x;
namebox_y = box_y - namebox_height;

x_buffer = 12;
y_buffer = 8;
text_x = box_x + x_buffer;
text_y = box_y + y_buffer;
name_text_x = namebox_x + (namebox_width / 2);
name_text_y = namebox_y + (namebox_height / 2);
text_max_width = box_width - (2 * x_buffer);

text_height = string_height("M");

text[0] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.";
text[1] = "etc.";
page = 0;
name = "Anonymous";

text_col = c_black;
name_text_col = c_black;
//font = fnt_text_12;
