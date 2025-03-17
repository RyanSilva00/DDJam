/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

event_inherited();

var key_left = keyboard_check(ord("A"));
var key_right = keyboard_check(ord("D"));
//tecla do pulo
var key_jump = keyboard_check(vk_space);


var _move = key_right - key_left !=0;

if (_move)
{
	sprite_index = spr_playerwalk; //muda a sprite
	move_dir = point_direction(0,0,key_right - key_left, 0);
	move_spd = approach(move_spd,move_spd_max, acc);
}else{
	sprite_index = spr_playeridle; //muda a sprite
	move_spd = approach(move_spd,0, dcc);
} 
hspd = lengthdir_x(move_spd, move_dir);

//faz a sprite virar
if (hspd != 0)
{
	image_xscale = sign(hspd);
}

//pulo
var _ground = place_meeting(x,y+1,obj_wall);

if (_ground)
{
	coyote_time = coyote_time_max;
}else{
	coyote_time--;
	if (vspd < 0){
		sprite_index = spr_playerjump;
	}
}
//se a tecla de pulo for apertada e o coyote time for maior que 0
if (key_jump and coyote_time > 0){
	coyote_time = 0;
	//zera a velocidade vertical
	vspd = 0;
	//faz ele sair do chão
	vspd -= jump_height;
}
 var key_tiro = keyboard_check_pressed(ord("J"));

if (key_tiro and global.Gifts > 0)
{
	with (instance_create_layer(x+0,y+0,"tiro",obj_presente))
	{
	//faz umas das balas acabar
	global.Gifts--;
	speed = 2.5;
	//direção
	direction = -90 + 90/other.image_xscale
	image_angle = direction;
	}
}
if (global.life <= 0){
	room_restart();
}

//var collision_e =instance_place(x+hspd, y, obj_enemy_parent);

//if (collision_e){
//	hspd = 0;
//	vspd = 0;
//	vspd -= 4;
//	damage_dir = point_direction(collision_e.x, collision_e.y, x,y);
//	state = player_state_damage();
//}

//function player_state_damage(){
//	sprite_index = spr_playeridle;
//	hspd = lengthdir_x(4, damage_dir);
	
//	damage_time = approach(damage_time, damage_distance, 1);
	
//	if (damage_time >= damage_distance){
//		hspd =0;
//		damage_time = 0;
//		state = spr_playeridle;
//	}
//}

