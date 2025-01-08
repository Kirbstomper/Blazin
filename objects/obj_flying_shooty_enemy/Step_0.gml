var target = instance_find(obj_player, 0);

if(abs(x - obj_player.x) > 50 && abs(y-obj_player.y) >50){
	move_towards_point(target.x,target.y,base_speed *global.heat_level)
}


if(attacking)
{
	global.player_health -= base_damage	
	attacking = false;
}