// Initial spawn rate
spawnRate = 60;

instance_create_layer(room_width / 2, 0, "Instances", obj_enemy);
alarm[0] = spawnRate;