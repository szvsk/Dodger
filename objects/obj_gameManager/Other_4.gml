randomize();

if (room == rm_start) { 
	// do nothing
}

if (room == rm_game) {
	global.playerScore = 0;
	instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_player);
	instance_create_layer(room_width / 2, 0, "Instances", obj_enemy);
	alarm[0] = spawnRate;
}