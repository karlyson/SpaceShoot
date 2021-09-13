/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snd_level, 0, 1);

alarm[0] = room_speed;

pontos = 0;
level = 1;
proximo_level = 100;
gameover_seq = noone;

criar_boss = true;
level_completo = false;

///@method ganha_pontos(pontos)
ganha_pontos = function(_pontos) {
	pontos += _pontos * level;
	if (pontos >= proximo_level) {
		level++;
		proximo_level *= 2;
	}
}

cria_inimigo = function() {
	randomize();
	var xx = irandom_range(64, room_width - 64);
	var yy = irandom_range(-96, -1500 - (level * 700));

	var inimigo = obj_inimigo01;

	if (random_range(0, level) > 2) {
		inimigo = obj_inimigo02;
	}


	instance_create_layer(xx, yy, "Inimigos", inimigo);
}