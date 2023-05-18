/// @description Player logic

//applies movement with delta
y = y + (spd * oDelta.delta);

//checks if meeting with an object that has oPop as parent
if place_meeting(x, y, oPop) {

	//set popped to true
	popped = true;
	
	//play sound sfxPop
	audio_play_sound(sfxPop, 0, false);

}