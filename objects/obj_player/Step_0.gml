/// @description Insert description here
// You can write your code in this editor
if((keyboard_check(vk_left)) && canMove == true){
    //sprite_index = spr_Hero_Left;
    isMoving = true;
    
    if !(place_meeting(x-2, y, obj_wall))
        {
            x -= playerSpeed;
        }
}

if((keyboard_check(vk_right))  && canMove == true){
    //sprite_index = spr_Hero_Right;
    isMoving = true;
    if !(place_meeting(x+2, y, obj_wall))
        {
            x += playerSpeed;
        }
}