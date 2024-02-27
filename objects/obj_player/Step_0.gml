/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
image_speed = 0;

if(keyboard_check(vk_right)){
	x += 4;
	image_speed = 0.65;
	image_xscale = abs(image_xscale);
}else if(keyboard_check(vk_left)){
	x -= 4;
	image_speed = 0.65;
	image_xscale = abs(image_xscale) * (-1);
}

if(keyboard_check(ord("J")) && sprite_index != spr_player_chute ){
	image_speed = 0.5;
	sprite_index = spr_player_chute;
	
	alarm[0] = 10;
}	

if(place_meeting(x,y,obj_inimigo)){
	if(obj_inimigo.sprite_index == spr_inimigo_attack){
		if(random(100) < 10){
			var inst = instance_find(Obj_lifeBar_Player,0);
			instance_destroy(inst);
		
		
		}
	
	}

}

if(instance_number(Obj_lifeBar_Player) == 0){
	show_debug_message("Você perdeu");
	room_restart();
}