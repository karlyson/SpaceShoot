/// @description Insert description here
// You can write your code in this editor

var up, down, left, right, escudo;
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
escudo = keyboard_check_pressed(ord("E"));

if (escudo && escudos > 0 && !meu_escudo) {
	escudos--;
	var shield = instance_create_layer(x, y, "Escudo", obj_escudo);
	shield.alvo = id;
	meu_escudo = shield;
}

y += (down - up) * velocidade;
x += (right - left) * velocidade;

x = clamp(x, 64, 1856);
y = clamp(y, 64, 1024);

atirando();


//REMOVER
if(keyboard_check_pressed(vk_up) && level_tiro < 5) {
	level_tiro++;
}
if(keyboard_check_pressed(vk_down) && level_tiro > 1) {
	level_tiro--;
}

if(keyboard_check_pressed(vk_right)) {
	espera_tiro *= 1.1;
}

if(keyboard_check_pressed(vk_left) && espera_tiro > 20) {
	espera_tiro *= 0.9;
}