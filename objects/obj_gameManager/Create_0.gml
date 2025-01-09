 global.heat_level = 1; // Score Multipler, Scaling Difficulty, Etc
 bombs_used = 0; // How much of the room is filled with flames
 flame_damage = 0.01;
 basic_bitch_spawn_time = 50;
 flying_shooty_spawn_time = 100;
 global.player_in_flames = false;
 global.player_health = 100.00;
 global.game_score = 0;
 global.debug = true;

alarm[1] = basic_bitch_spawn_time
alarm[2] = basic_bitch_spawn_time + flying_shooty_spawn_time
#region UseBomb
function UseBomb(){
	var fire_size = 32;
	var factor = (bombs_used *fire_size);
	
	//Spawn in fire based on number
	for(var i = factor; i<room_width-factor;i+= obj_flamingArea.sprite_width){
			instance_create_layer(i, room_height-fire_size-factor,id.layer, obj_flamingArea);
			instance_create_layer(i, 0 +factor,id.layer, obj_flamingArea);
		}
		
	for(var i = factor; i<room_height-factor;i+= obj_flamingArea.sprite_height){
			instance_create_layer(0+factor, i,id.layer, obj_flamingArea);
			instance_create_layer(room_width -factor, i,id.layer, obj_flamingArea);
		}
	
	
	//DESTROY ALL ENEMY BULLET
	with (obj_enemy_bullet)
	{
		instance_destroy()
	}
	with (obj_boss_bullet)
	{
		instance_destroy()
	}
	
	
	bombs_used++;
}
#endregion

#region IncreaseHeat
function IncreaseHeat(){
	if(global.heat_level <11){
		global.heat_level++;	
	}
}
#endregion

#region DecreaseHeat
function DecreaseHeat(){
	if(global.heat_level >1){
		global.heat_level--;
	}
}
#endregion


#region ResetHeat
function ResetHeat(){
	global.heat_level = 1;
}
#endregion

UseBomb()
