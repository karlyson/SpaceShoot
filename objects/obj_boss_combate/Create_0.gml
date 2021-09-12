/// @description Insert description here
// You can write your code in this editor
/*
Estado 1 - Parado dando o tiro 2
Estado 2 - Movendo dando o tiro 1
Estado 3 - Parado intercalando entre o tiro 1 e 2
(Estado 4)
Estado especial 1 - Ficar invunerável com 2 minions que o curam
*/


delay_tiro = room_speed / 2;
espera_tiro = 0;
delay_estado = room_speed * 10;

velocidade_horizontal = 3;

vida_max = 1500;
vida_atual = vida_max;

criar_minions = true;

posso_ir_para_estagio_4 = true;

///@method seleciona_estado()
seleciona_estado = function() {
	estado_atual = choose("estado 1", "estado 2", "estado 3");
	alarm[0] = delay_estado;
}

seleciona_estado();

///@method tiro_02()
tiro_02 = function() {
	instance_create_layer(x, y + 80, "tiros", obj_tiro_inimigo02);
}

///@method tiro_01(_direita)
tiro_01 = function(_direita) {
	if (_direita) {
		instance_create_layer(x + 160, y + 10, "tiros", obj_tiro_inimigo01);
	} else {
		instance_create_layer(x - 160, y + 10, "tiros", obj_tiro_inimigo01);
	}
}

///@method estado_01()
estado_01 = function() {
	espera_tiro--;
	if (espera_tiro <= 0) {
		tiro_02();
		espera_tiro = delay_tiro;
	}
}

///@method estado_02()
estado_02 = function() {
	espera_tiro--;
	if (espera_tiro <= 0) {
		tiro_01(false);
		tiro_01(true);
		espera_tiro = delay_tiro * 2;
	}
	x += velocidade_horizontal;
	if (x >= 1632 || x <= 288) {
		velocidade_horizontal *= -1;
	}
}

///@method estado_03()
estado_03 = function() {
	espera_tiro--;
	if (espera_tiro <= 0) {
		tiro_02();
		espera_tiro = delay_tiro * 2;
	}
	if (espera_tiro == delay_tiro) {		
		tiro_01(false);
		tiro_01(true);
	}
}

///@method estado_04()
estado_04 = function() {
	sprite_index = spr_boss_escuro;
	
	//Ir para meio
	x += sign(room_width / 2 - x);
	
	if (criar_minions) {
		criar_minions = false;
		
		var _minion = instance_create_layer(128, 672, "Inimigos", obj_boss_minion);
		_minion.image_angle = 90;
		_minion = instance_create_layer(1760, 672, "Inimigos", obj_boss_minion);
		_minion.image_angle = 270;
	}
	
	if (!instance_exists(obj_boss_minion)) {
		seleciona_estado();
	}
}