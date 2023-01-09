/// @description Movement of player character

//Defining variables
var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var onTheGround = place_meeting(x, y + 1, obj_wall);
var onWall = place_meeting(x - 5, y, obj_wall) - place_meeting(x + 5, y, obj_wall);

//Locking movement for wall jump
mvtLocked = max(mvtLocked-1, 0);

if (onWall != 0) {
	ySpeed = min(ySpeed + 1, 5)
} else ySpeed++;

//Reset jumps
if(onTheGround){
	jumps = 2;
}

//Jump
if(mvtLocked <= 0){
	//Check direction
if (xDirection != 0) image_xscale = xDirection;

//Grapple hook
//if (mouse_check_button_pressed(mb_right)) {
		
//		hX = mouse_x;
//		hY = mouse_y;
		
//		if place_meeting(hX, hY, obj_wall) {
			
//			grapple = true;
			
//		}
		
//}

//if mouse_check_button_released(mb_right){

//	grapple = false;
	
//}

//if(grapple){
//		xSpeed += (hX - x) * 0.2;
//		ySpeed += (hY - y) * 0.02;
//}

//Movement and gravty
xSpeed = xDirection * spd;
	if (jump and jumps > 0) {
			jumps--;
			ySpeed = -15;

		if (onWall != 0) {
			jumps = 2;
			ySpeed = -15;
			xSpeed = onWall * spd;
			mvtLocked = 10;
		}
	}
}

if (onTheGround) {
	//Put animation and sprites here
} else if (onWall != 0) {
	image_xscale = onWall;
}


//Climbing ladder
if(keyboard_check(ord("W")) || keyboard_check(ord("S"))){
	if(place_meeting(x, y, obj_ladder)){ 
		ladder = true;
		}
} 

if ladder{
	state_set(states.climb);
	ySpeed = 0;	
	if(keyboard_check(ord("W"))){
		ySpeed = -2;	
	}
	if(keyboard_check(ord("S"))){
		ySpeed = 2;	
	}
	if(!place_meeting(x, y, obj_ladder)){ 
		ladder = false;
		}
	if(keyboard_check_pressed(vk_space)){
		ladder = false;	
	}
}

//Check collision with obj_wall and stop movement along x axis
if (place_meeting(x + xSpeed, y, obj_wall)) { 

	xSpeed = 0; 

}



//Check collision with obj_wall and stop movement along y axis
if (place_meeting(x, y + ySpeed, obj_wall)) { 

	ySpeed = 0; 

}


//If moving 
if (xSpeed!=0 || ySpeed != 0){
	
	//Move along x axis
	x += xSpeed;
	//Move along y axis
	y += ySpeed;
	
	//Change sprite
	if !ladder {
		sprite_index = spr_witch_running;
	} else sprite_index = spr_witch_climbing;
} else sprite_index = spr_witch_idle;

//Restart game if charaHealth reaches 0
if (charaHealth <= 0){
	show_message("You lose");
	game_restart();
}

//Attack states
if (state == states.idle || state == states.walk) {
	//moveX = lerp(moveX, inputY * moveSpeed, 0.2);
	//moveY = lerp(moveY, inputY * moveSpeed, 0.2);
	
	//x += moveX;
	//y += moveY;
	
	//Flip
	if (inputX != 0 || inputY != 0) {
		image_xscale = sign(inputX);
		state_set(states.walk);
	}
	//Attack
	if (mouse_check_button_pressed(mb_left)) {
		state_set_attack(states.attack);
	}
}



