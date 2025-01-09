instance_find(obj_gameManager,0).IncreaseHeat();
var explo = instance_create_layer(x,y,layer,obj_explosion );

explo.image_xscale = sprite_width/explo.sprite_width;
explo.image_yscale = sprite_height/explo.sprite_height;