/// @description Insert description here
// You can write your code in this editor



var _dir = point_direction(x, y, mouse_x, mouse_y);
var _diff = angle_difference(_dir, image_angle);
image_angle += _diff;


if((keyboard_check(vk_left)) && canMove == true){
    isMoving = true;
    
    if !(place_meeting(x-playerSpeed, y, obj_wall))
        {
            x -= playerSpeed;
        }
}

if((keyboard_check(vk_right))  && canMove == true){
    isMoving = true;
    if !(place_meeting(x+playerSpeed, y, obj_wall))
        {
            x += playerSpeed;
        }
}

if((keyboard_check(vk_up)) && canMove == true){
    isMoving = true;
    
    if !(place_meeting(x, y-playerSpeed, obj_wall))
        {
            y -= playerSpeed;
        }
}

if((keyboard_check(vk_down))  && canMove == true){
    isMoving = true;
    if !(place_meeting(x, y+playerSpeed, obj_wall))
        {
            y += playerSpeed;
        }
}
