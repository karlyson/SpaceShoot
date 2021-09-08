/// @description Insert description here
// You can write your code in this editor
vspeed = 3;
min_fire_time = 1;
max_fire_time = 3;
pontos = 10;

randomize();
alarm[0] = random_range(min_fire_time, max_fire_time) * room_speed;

atirando = function() {
	if (y >= 0) {
		//-3 para alinhar com a boca
		instance_create_layer(x - 3, y + (sprite_height / 3), "Tiros", obj_tiro_inimigo01);
	}
}