/// @description Initialize game

//sets window caption
window_set_caption(game_display_name);

//sets scaling for game
game_setScale(game_scale);

//resets display
display_reset(0, false);

//sets alarm 0
alarm[0] = 1;

//creates object oGame
instance_create_layer(x, y, "Instances", oGame);

//creates object oDelta
instance_create_layer(x, y, "Instances", oDelta);

//creates object oCamera
instance_create_layer(0, 0, "Instances", oCamera);

//sets default font
draw_set_font(fDefault);

//sets scheduler resolution to 1
scheduler_resolution_set(1);

//go to the next room
room_goto_next();