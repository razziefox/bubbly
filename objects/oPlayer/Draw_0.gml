/// @description Draws player and GUI

//sets text alignment to the left
draw_set_halign(fa_left);

//draws objects sprite
draw_sprite(sprite_index, 0, x, y);

//draws sBub sprite
draw_sprite_ext(sBub, 0, x-3, y-11, 1, 1, 0, -1, 1);

//draws the amount of amo the player has
draw_text(x+1, y-13, ammo);

//displays debug text
//draw_text((x)-4, (y)-22, vspd);