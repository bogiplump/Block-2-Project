/// @description Draw hearts

var xoffset = 24;

//draw hearts with for loop
for(var i = 0; i < obj_chara_demo.charaHealth; i++){
	draw_sprite(hp_hearts, 0, xstart + xoffset * i, ystart);
}
