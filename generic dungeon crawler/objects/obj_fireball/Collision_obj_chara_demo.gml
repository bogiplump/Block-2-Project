/// @description Fireball hitting chara

other.dmgTimer--
if(other.dmgTimer<=0){
		other.charaHealth -= dmg;
		other.dmgTimer = 15;
		obj_chara_demo.ySpeed = -(16 / 3);
		show_debug_message("player is hit by fire ball");
		show_debug_message(obj_chara_demo.charaHealth);
		instance_destroy();
	}

