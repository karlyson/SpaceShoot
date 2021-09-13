/// @description Insert description here
// You can write your code in this editor
if (!troquei_room && alpha < 1) {
	alpha += 0.02;
} else {
	alpha -= 0.03;
}

if (alpha >= 1 && !troquei_room) {
	room_goto(destino);
}

if (alpha <= 0 && troquei_room) {
	instance_destroy();
}