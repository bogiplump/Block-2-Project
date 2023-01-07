/// @description 

/// @description Jumping enemy code

xSpeed = dir * spd;
ySpeed += grav;

//Check collision with obj_enemy_turn_around and change movement along x axis
if (place_meeting(x + xSpeed, y, obj_enemy_turn_around)) { 

	while (!place_meeting(x + sign(xSpeed), y, obj_enemy_turn_around)) {

		x += sign(xSpeed);

	}

	xSpeed = 0; 
	
	dir *= -1;
}


//Move along x axis
x += xSpeed;

//Check collision with obj_wall and stop movement 
if (place_meeting(x, y + ySpeed, obj_wall)) { 

	while (!place_meeting(x, y + sign(ySpeed), obj_wall)) {

		y += sign(ySpeed);

	}

	ySpeed = 0;
	
	

}


//Move along y axis
y += ySpeed;


//Jumping enemy collision
if (place_meeting(x,y,obj_chara_demo)) {

if (obj_chara_demo.y < y - 16) {
	//Kill enemy by jumping
	with(obj_chara_demo) obj_chara_demo.ySpeed = -15;
	instance_destroy();
} else {
	//Lose health and immunity frames timer
	
	obj_chara_demo.dmgTimer--;
	
	if(obj_chara_demo.dmgTimer<=0){
		obj_chara_demo.charaHealth--;
		obj_chara_demo.dmgTimer=15;
		obj_chara_demo.ySpeed = -(16 / 3);
	}
	
}

//Checking if damage works in the console
show_debug_message(obj_chara_demo.charaHealth);

}

check_fire();

