/// @description Logic

//plays animation based on animation times delta
image_speed = animation_speed * oDelta.delta;

//checks if image index is 2 or larger, if so then destroy itself
if image_index >= 2 instance_destroy(self);