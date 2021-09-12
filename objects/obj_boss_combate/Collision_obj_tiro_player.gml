/// @description Insert description here
// You can write your code in this editor
if (estado_atual != "estado 4") {
	vida_atual--;
	if (vida_atual <= 0) {
		instance_destroy();	
	}
	instance_destroy(other);
	
	if (posso_ir_para_estagio_4 && vida_atual < vida_max / 2) {
		posso_ir_para_estagio_4 = false;
		estado_atual = "estado 4";
	}
}