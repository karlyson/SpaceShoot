/// @description Insert description here
// You can write your code in this editor
vspeed = 3;
min_fire_time = 1;
max_fire_time = 3;

randomize();
alarm[0] = random_range(min_fire_time, max_fire_time) * room_speed;