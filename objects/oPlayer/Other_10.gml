/// @description Player logic

//g r a v i t y
vspd = vspd + (grav * oDelta.delta);

//sets both left and right inputs to moving variable
moving = (keyboard_check(vk_left) || keyboard_check(vk_right))

//checks if moving is not true, if so then set hspd to 0
if !moving hspd = 0;

//checks if vspd is bigger then limit, if so then set it to limit
if (vspd) > vspd_limit vspd = vspd_limit;

//sets position based on spd times delta
y = y + (vspd * oDelta.delta);
x = x + (hspd * oDelta.delta);

//checks if object is touching oFloat
if place_meeting(x, y-4, oFloat) {
	
	//sets vspd to -0.36, simulating floating
	vspd =  -0.36;
	
	//sets max_ammo to ammo variable
	ammo = max_ammo;

}

//checks if object is touching oPop
if place_meeting(x, y, oPop) {

	//sets popped variable to false
	popped = true;
	
	//plays sfxPop soundfx
	audio_play_sound(sfxPop, 0, false)

}

//checks if left key is pressed
if keyboard_check(vk_left) {

	//sets hspd to negative spd
	hspd = -spd;

}

//checks if right key is pressed
if keyboard_check(vk_right) {

	//sets hspd to positive spd
	hspd = spd;

}

//checks if space key is pressed and ammo is bigger then 0
if keyboard_check_pressed(vk_space) and ammo > 0 {

	//sets jmp_height to vspd
	vspd = jmp_height;
	
	//plays sfxFloat soundfx
	audio_play_sound(sfxFloat, 0, false);
	
	//checks if object isn't touching oFloat
	if !place_meeting(x, y, oFloat) {
		
		//remove 1 from ammo
		ammo -= 1;
		
		//creates object oBub below the player
		instance_create_layer(x, y+4, "Instances", oBub);
	
	}

}