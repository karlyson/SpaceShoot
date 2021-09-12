/// @description Insert description here
// You can write your code in this editor
/*
Estado 1 - Parado dando o tiro 2
Estado 2 - Movendo dando o tiro 1
Estado 3 - Parado intercalando entre o tiro 1 e 2
(Estado 4)
Estado especial 1 - Ficar invunerável com 2 minions que o curam
*/

estado_atual = choose("estado 1", "estado 2", "estado 3");
delay_tiro = room_speed / 2;
espera_tiro = 0;
delay_estado = room_speed * 10;

velocidade_horizontal = 3;

vida_max = 2000;
vida_atual = vida_max;

alarm[0] = delay_estado;

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