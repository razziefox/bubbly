/// @description Delta logic

//sets built-in delta time divided by 1000000 to gm_delta
gm_delta = delta_time / 1000000;

//sets gm_delta times the target logic fps to actual_delta
actual_delta = gm_delta * 60;

//sets clamp of gm_delta and actual_delta to delta variable
delta = clamp(0.95, gm_delta, actual_delta);

//displays delta
//show_debug_message(delta);