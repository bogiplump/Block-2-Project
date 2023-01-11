/// @description Create variables

spd = 5;
xSpeed = 0;
ySpeed = 0;
charaHealth = 5;
healthMax = charaHealth;
dmgTimer = 0;
inputX = 0;
inputY = 0;
moveSpeed = 2;
moveX = 0;
moveY = 0;
knockSpeed = 10;
mvtLocked = 0;
ladder = false;

//hx = 0
//hy = 0
//grapple = false


// Inintialize states
states = {
	idle : new State (spr_witch_idle),
	walk : new State (spr_witch_running),
	attack : new State (spr_chara_attack)
}

states.attack.StateOnEnd(states.idle);

// Set initial state
state = states.idle;