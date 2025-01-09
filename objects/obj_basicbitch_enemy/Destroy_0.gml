global.game_score += base_score_val * global.heat_level
instance_find(obj_gameManager,0).IncreaseHeat();
var explo = instance_create_layer(x,y,layer,obj_explosion )

explo.image_xscale = sprite_width/explo.sprite_width;
explo.image_yscale = sprite_height/explo.sprite_height;

audio_play_sound(small_enemy_death, 0, 0)