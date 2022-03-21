if (room == rm_start) { // draw logo and text on title screen
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_sprite(spr_title, sprite_index, room_width / 2, room_height / 2 - 180);
	draw_text(room_width / 2, room_height / 2 + 64, total_score_text + string(global.record_score));
	draw_text(room_width / 2, 550, start_text + exit_text);
}

if (room == rm_game) {
	if (!global.gameOver) { // draw score at the top of the screen
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		draw_text(room_width / 2, 64, global.playerScore);
	} else if (global.gameOver) { // draw game over text at the center of the screen
		draw_text(room_width / 2, room_height / 2, game_over_a_text + string(global.playerScore) + game_over_b_text);
	}
}