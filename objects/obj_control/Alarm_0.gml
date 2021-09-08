/// @description Cria os inimigos

randomize();
var xx = irandom_range(64, room_width - 64);
var yy = irandom_range(-96, -1500);

instance_create_layer(xx,yy,"Inimigos", obj_inimigo01);

alarm[0] = room_speed;