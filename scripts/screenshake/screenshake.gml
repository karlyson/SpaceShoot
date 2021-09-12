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