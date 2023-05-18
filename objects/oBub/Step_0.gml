/// @description Checks player state

//checks if popped is false
if popped = false {
	
	//trigger event 0
	event_user(0)
	
	//set sprite to sBub
	sprite_index = sBub;
	
} else {
	
	//set sprite to sBub_pop
	sprite_index = sBub_pop;
	
	//adds delta to timer variable
	timer += oDelta.delta;
	
	//checks if timer is larger or equal to 10
	if 10 <= timer {
	
		//destroy itself
		instance_destroy(self);
	
	}

}