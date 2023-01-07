draw_self();

//Drawi grappling hook
if (grapple){
	draw_line(x, y, hX, hY);
}

//Draw hitbox
draw_set_color(c_red);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, 1);
draw_set_color(c_white);


