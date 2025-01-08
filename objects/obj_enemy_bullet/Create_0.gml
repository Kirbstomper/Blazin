base_damage = .5
speed = 1 * global.heat_level;
var target = instance_find(obj_player, 0);


direction = point_direction(x, y, target.x, target.y)

image_angle = direction