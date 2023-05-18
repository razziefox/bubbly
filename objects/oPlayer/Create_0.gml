/// @description Initialize variables

//sets timer to 0
timer = 0;

//sets player physics
grav = 0.02;
vspd = 0;
hspd = 0;
spd = 1.2;
vspd_limit = 1.74;
jmp_height = -1;

//sets player "ammo" (amount of bubbles player can shoot)
max_ammo = 4;
ammo = max_ammo;

//sets player states to false
moving = false;
popped = false;

//sets player spawn
spawn_x = x;
spawn_y = y;

//sets depth to -1000
depth = -1000;