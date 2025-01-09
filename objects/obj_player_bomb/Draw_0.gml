/// @description Insert description here
// You can write your code in this editor
draw_set_colour(make_colour_rgb(255, 255, alpha * 100));
gpu_set_blendmode(bm_add);
draw_rectangle(view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0], false);
gpu_set_blendmode(bm_normal);
draw_set_colour(c_black);