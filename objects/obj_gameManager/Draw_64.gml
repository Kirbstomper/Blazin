draw_text(100, 100, global.game_score)




if(global.debug){
	draw_text(0, 100, "Heat:" +string(global.heat_level))
	draw_text(0, 150, "Bombs Used: " + string(bombs_used))
	draw_text(0, 200, "PlayerHealth : " + string(global.player_health))
}