randomize();

if (room == rm_start) { 
	audio_play_sound(snd_music_menu, 0, true);
}

if (room == rm_game) {
	audio_play_sound(snd_music_ingame, 0, true);
	global.playerScore = 0;
	instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_player);
	instance_create_layer(room_width / 2, 0, "Instances", obj_enemy);
	alarm[0] = spawnRate;
}