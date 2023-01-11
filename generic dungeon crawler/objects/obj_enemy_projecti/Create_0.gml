/// @description Create variables

dir = -1;
spd = 2;
xSpeed = 0;
ySpeed = 0;
grav = 0.2;
projTimer = 120;
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
				 
				if (obj_chara_demo.x - obj_enemy_projecti.x == -x) {
					obj_fireball.direction = obj_enemy_projecti.direction;
					obj_fireball.image_angle = 180;
				} else {
					obj_fireball.direction = obj_enemy_projecti.direction;
					obj_fireball.image_angle = 0;
				}
				
		}
	}
}