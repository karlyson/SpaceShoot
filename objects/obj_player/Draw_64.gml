/// @description Insert description here
// You can write your code in this editor

var x_posicao = 40;
repeat(vida) {
	draw_sprite_ext(spr_player, 0, x_posicao, 60, 0.3, 0.3, 0, c_white, .4);
	x_posicao += 40;
}

var x_posicao = 40;
repeat(escudos) {
	draw_sprite_ext(spr_escudo, 2, x_posicao, 110, 0.3, 0.3, 0, c_white, .4);
	x_posicao += 40;
}