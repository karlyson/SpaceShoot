/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


//Mudar de direção depois de mover X pixels
if (x > xstart + 50 || x < xstart - 50) {
	hspeed *= -1;
}