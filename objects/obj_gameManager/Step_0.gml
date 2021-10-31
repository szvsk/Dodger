// Check for player input in main menu
if (keyboard_check_released(vk_enter) && room == rm_start) {
	room_goto(rm_game);
}

if (keyboard_check_released(vk_escape) && room == rm_start) {
	game_end();
}

// Check for room restart if game over
if (keyboard_check_released(ord("r")) && room == rm_game && global.gameOver == true) {
	room_restart();
	global.gameOver = false;
}

// If Game Over
if (global.gameOver == true) {
	alarm[0] = -1;
	instance_destroy(obj_enemy);
	instance_destroy(obj_player);
	
	if (keyboard_check_released(ord("r")) || keyboard_check_released(ord("R"))) {
		global.gameOver = false;
		// Not needed now - i do not change it yet
		// spawnRate = 60; 
		room_restart();
	}
	
	if (keyboard_check_released(vk_escape)) {
		save_savegame();
		game_end();
	}
}