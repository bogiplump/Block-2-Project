/// @description Create variables

dir = -1;
spd = 2;
xSpeed = 0;
ySpeed = 0;
grav = 0.2;
projTimer = 170;
projSpeed = 4;
canFire = true;
enemyHealth = 3;
attackable = true;

function check_fire(){
	if canFire {
		
		canFire = false;	
		alarm[1] = projTimer;
		
		var inst = instance_create_layer(x, y, "Fireball", obj_fireball);
		with (inst) {
				obj_fireball.speed = obj_enemy_projecti.projSpeed;
				if (place_meeting(x + obj_enemy_projecti.xSpeed, y, obj_enemy_turn_around)) { 
				dir *= -1;
				obj_fireball.direction = obj_enemy_projecti.dir;
				obj_fireball.image_angle = obj_enemy_projecti.dir;
				}
		}
	}
}