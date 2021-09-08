/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (y > room_height/3 && posso_mover) {
	posso_mover = false;
	if (x > room_width/2) {
		//estou na direita
		hspeed = -4;
	} else {
		//estou na esquerda
		hspeed = 4;
	}
}