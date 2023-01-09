//Collision with the attack of the player

if (!attackable) exit;

if attackable {
	attackable = false;
	alarm[0] = 30;
	enemyHealth -= 2;
	if(enemyHealth<=0){
		instance_destroy();
	}
	show_debug_message("Enemy is hit");
	show_debug_message(enemyHealth);
}

var _dir = point_direction(obj_chara_demo.x, obj_chara_demo.y, x, y);
obj_chara_demo.moveX = lengthdir_x(obj_chara_demo.knockSpeed, _dir);
obj_chara_demo.moveY = lengthdir_y(obj_chara_demo.knockSpeed, _dir);

