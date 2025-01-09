/// @description Insert description here
// You can write your code in this editor
event_inherited()
var target = instance_find(obj_player, 0);


if(abs(x - obj_player.x) > 50 || abs(y-obj_player.y) >50){
	move_towards_point(target.x,target.y,base_speed *global.heat_level)
}

var _dir = point_direction(x, y, target.x, target.y);
var _diff = angle_difference(_dir, image_angle);
image_angle += _diff;


if(attacking)
{
	global.player_health -= base_damage	
	attacking = false;
}

//SHOOTY SHOOTY TOWARDS PLAYER
if(can_shoot)
{
	can_shoot = false;
	alarm[0] = base_shot_rate;
	var _xx = x + lengthdir_x(64, image_angle);
	var _yy = y + lengthdir_y(64, image_angle);
	instance_create_layer(_xx, _yy, layer, obj_boss_bullet);
}
