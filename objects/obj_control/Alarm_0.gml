/// @description Cria os inimigos

if (!instance_exists(obj_inimigo01)&& !level_completo) {
	
	if (level >= 10) {
		if (criar_boss) {
			criar_boss = false;
			layer_sequence_create("Boss_entrada", 992, 512, sq_boss_entrada);
			
			audio_stop_all();
		}
	} else {
		repeat(10 * level) {
			cria_inimigo();
		}
	}
}

alarm[0] = room_speed * 5;