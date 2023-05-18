/// @description Player state


//checks if popped is false
if popped = false {
	
	//triggers event 0
	event_user(0)
	
	//sets sprite index to sPlayer
	sprite_index = sPlayer;
	
} else {
	
	//sets sprite index to sPlayer_pop
	sprite_index = sPlayer_pop;
	
	//adds delta from object oDelta to timer variable
	timer += oDelta.delta;
	
	//checks if timer is bigger or equal to 15
	if 15 <= timer {
	
		//sets popped variable to false
		popped = false;

		//resets variables back to 0
		timer = 0;
		vspd = 0;

		//refills players ammo
		ammo = max_ammo;
		
		//sets player current position to spawn
		x = spawn_x;
		y = spawn_y;
	
	}

}