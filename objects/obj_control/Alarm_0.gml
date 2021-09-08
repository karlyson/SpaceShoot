/// @description Cria os inimigos

if (!instance_exists(obj_inimigo01)) {
	repeat(10 * level) {
		cria_inimigo();
	}
}

alarm[0] = room_speed * 5;