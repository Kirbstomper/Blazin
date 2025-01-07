 heat_level = 1; // Score Multipler, Scaling Difficulty, Etc
 bombs_used = 0; // How much of the room is filled with flames
 
 
 global.debug = true;



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
	
	
	bombs_used++;
}
#endregion

UseBomb();