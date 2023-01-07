/// @description Create variables

spd = 8; // player speed
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
jumps = 2;
jumpN = 0;
hX = 0; //hook x coordinate
hY = 0; //hook y coordinate
grapple = false; //grappling

// Inintialize states
states = {
	idle : new State (sprite_character_demo),
	walk : new State (sprite_character_demo),
	attack : new State (spr_chara_attack)
}

states.attack.StateOnEnd(states.idle);

// Set initial state
state = states.idle;