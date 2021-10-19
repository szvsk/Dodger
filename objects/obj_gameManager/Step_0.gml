// Check for player input
if (keyboard_check_released(vk_enter) && room == rm_start) {
	room_goto(rm_game);
}

if (keyboard_check_released(vk_escape) && room == rm_start) {
	game_end();
}
	