alarm[2] = flying_shooty_spawn_time - global.heat_level;

//lets not spawn right on top of player
var player = instance_find(obj_player, 0);


var spawn_x = player.x;
var spawn_y = player.y;

while(abs(spawn_x-player.x)<50){
spawn_x = random_range(0, room_width)
}

while(abs(spawn_y-player.y)<50){
spawn_y = random_range(0, room_height)
}
//then spawn
if (!instance_exists(obj_boss))
{
instance_create_layer(spawn_x, spawn_y, layer, obj_flying_shooty_enemy)
	}

