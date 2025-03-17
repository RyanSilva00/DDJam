/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
event_inherited();
move_spd = 1.20;
move_dir = 1;
vida = 2;

state_walk = function(){
	sprite_index = spr_elfo_walk;
	hspd = move_dir * move_spd;
	
	if (hspd != 0)
{
	image_xscale = sign(hspd);
}

	if (place_meeting(x+hspd,y, obj_wall_inimigo)){
		move_dir *= -1;
	}
	if (place_meeting(x+hspd,y, obj_player)){
		move_dir *= -1;
		global.life--;
	}
}

state = state_walk;

