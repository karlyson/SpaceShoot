/// @description Insert description here
// You can write your code in this editor

image_alpha -= 0.1;

if (image_alpha <= 0.3) {
	instance_destroy(id, false);
}

alarm[0] = room_speed;