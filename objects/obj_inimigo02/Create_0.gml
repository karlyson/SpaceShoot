/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

atirando = function() {
	if (y >= 0) {
		//-3 para alinhar com a boca
		instance_create_layer(x, y + (sprite_height / 3), "Tiros", obj_tiro_inimigo02);
	}
}

posso_mover = true;