/// @description Insert description here
// You can write your code in this editor

if (estado_atual != "estado 4") {
	sprite_index = spr_boss_combate;
}

if (estado_atual == "estado 1") {
	estado_01();
} else if (estado_atual == "estado 2") {
	estado_02();
} else if (estado_atual == "estado 3") {
	estado_03();
} else if (estado_atual == "estado 4") {
	sprite_index = spr_boss_escuro;
}