/// @description Insert description here
// You can write your code in this editor
if (image_index > 0) {
	image_index--;
} else {
	instance_destroy();
}

image_alpha -= 0.2;


alarm[0] = room_speed;