/// @description Insert description here
// You can write your code in this editor
if (vida > 0) {
	vida--;
	instance_destroy(other);
	image_alpha -= 0.08;
	aumento_escala *= 1.1;
} else {
	instance_destroy();
}