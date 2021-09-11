/// @description Insert description here
// You can write your code in this editor
var altura_gui = display_get_gui_height();

var x_posicao = 40;
repeat(vida) {
	draw_sprite_ext(spr_player, 0, x_posicao, altura_gui - 40, 0.3, 0.3, 0, c_white, .4);
	x_posicao += 40;
}