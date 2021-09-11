/// @description Iniciando variáveis

velocidade = 5;
espera_tiro = room_speed;
level_tiro = 1;

vida = 3;
escudos = 3;

tiro2 = function(_y_tiro) {
	var tiro_1 = instance_create_layer(x - 60, _y_tiro + 10, "Tiros", obj_tiro2_player);
	tiro_1.hspeed = -5;
	var tiro_2 = instance_create_layer(x + 60, _y_tiro + 10, "Tiros", obj_tiro2_player);
	tiro_2.hspeed = 5;
}

tiro4 = function(_y_tiro) {
	var direcao = 75;
	repeat(3) {
		var tiro_1 = instance_create_layer(x, _y_tiro + 10, "Tiros", obj_tiro_player);
		tiro_1.direction = direcao;
		tiro_1.image_angle = tiro_1.direction - 90;
		direcao += 15;
	}
}

atirando = function() {
	var fire = keyboard_check(vk_space);
	if (fire && alarm[0] == -1) {
		var y_tiro = y - (sprite_height / 3);
		alarm[0] = espera_tiro;
		if (level_tiro == 1) {
			instance_create_layer(x, y_tiro, "Tiros", obj_tiro_player);
		} else if (level_tiro == 2) {
			tiro2(y_tiro);
		} else if (level_tiro == 3) {
			instance_create_layer(x, y_tiro, "Tiros", obj_tiro_player);
			tiro2(y_tiro);
		} else if (level_tiro == 4) {
			tiro4(y_tiro);
		} else {
			tiro2(y_tiro);
			tiro4(y_tiro);
		}
	}
}

///@method perde_vida()
perde_vida = function() {
	
	if (vida <= 1) {
		instance_destroy();
		screenshake(20);
	} else {
		vida--;
		screenshake(5);
	}
}

///@method level_up(chance)
level_up = function(_chance) {
	if (_chance >= 90) {
		if (level_tiro < 5) {
			level_tiro++;
		}
	} else if (_chance >= 45) {
		if (espera_tiro > 20) {
			espera_tiro *= 0.9;
		}
	} else {
		if (velocidade < 10) {
			velocidade += 0.5;
		}
	}
}