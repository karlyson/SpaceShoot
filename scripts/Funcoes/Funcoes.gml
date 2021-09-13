// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(_shake){
	var screen = instance_create_layer(0, 0, "Escudo", obj_screenshake);
	screen.shake = _shake;
}

function ganhando_pontos(_pontos) {
	//Se já estou no máximo ganho 100 pontos
	if (instance_exists(obj_control)) {
		obj_control.ganha_pontos(100);
	}
}

function destroi_seq() {
	var elementos = layer_get_all_elements("Boss_entrada");
	layer_sequence_destroy(elementos[0]);
	
	instance_create_layer(992, 256, "Boss", obj_boss_combate);
}

function destroi_seq2() {
	var elementos = layer_get_all_elements("Boss_morte");
	layer_sequence_destroy(elementos[0]);
	
	if (instance_exists(obj_control)) {
		obj_control.level_completo = true;
	}
	
	if (instance_exists(obj_player)) {
		layer_sequence_create("Sequences", obj_player.x, obj_player.y, sq_level_end);
		instance_destroy(obj_player, false);
	}
}