instance_find(obj_gameManager,0).IncreaseHeat();
instance_find(obj_gameManager,0).alarm[3] = random_range(60, 600);
var explo = instance_create_layer(x,y,layer,obj_explosion);

explo.image_xscale = sprite_width/explo.sprite_width;
explo.image_yscale = sprite_height/explo.sprite_height;

audio_play_sound(boss_death, 0, 0)