/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (instance_exists(obj_boss_combate)) {
	direction = point_direction(x, y, obj_boss_combate.x, obj_boss_combate.y);
	//Adiciono + 90 pois a imagem está apontando para baixo e o zero é apontando para a direita
	//Se alterasse a imagem para apontar para a direita, não precisava desse +90
	image_angle = direction + 90;
}