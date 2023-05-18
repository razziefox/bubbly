/// @description Initialize variables

//sets built-in delta time divided by 1000000 to gm_delta
gm_delta = delta_time / 1000000;

//sets gm_delta times the target logic fps to actual_delta
actual_delta = gm_delta * 60;

//sets room speed to delta
delta = room_speed