/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if(point_distance(x,y,obj_player.x,obj_player.y) < 30){
	if(random(100)< 10) && sprite_index != spr_inimigo_attack {
	sprite_index = spr_inimigo_attack;
	alarm[0] = 30;
}
	
}else{	


	if(state == walking){

		if(x< obj_player.x){
			x += 2;
			image_xscale = abs(image_xscale);	
		}else{
			x -= 2;
			image_xscale = abs(image_xscale) * (-1);
		}	
		
	}
}




/*
if(random(100) < 3){
	state = choose(attack,defense,walking);
	show_debug_message(state);
}
*/

if(place_meeting(x,y,obj_player)){
	if(obj_player.sprite_index == spr_player_chute){
		if(random(100) < 10){
			var inst = instance_find(Obj_lifeBar_Inimigo,0);
			instance_destroy(inst);
		
		
		}
	
	}

}

if(instance_number(Obj_lifeBar_Inimigo) == 0){
	show_debug_message("Você Ganhou");
	room_restart();
}