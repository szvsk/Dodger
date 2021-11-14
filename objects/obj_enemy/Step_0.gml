motion_set(direction, movementSpeed)
// y += movementSpeed;

// Check if enemy is running out the room
if ((x - sprite_width / 2) <= 0) {
	var d = 270 - direction;
	direction = 540 + d; 
}

if ((x + sprite_width / 2) >= room_width) {
	var d = direction - 270;
	direction = 270 - d;
}


// Check if enemy is out of the room by y-axis
if (y > room_height) {
	global.playerScore += 1;
	
	if ((global.playerScore != 0) && (global.playerScore % 10 == 0))
		global.enemySpeedBoost += 1;
	
	instance_destroy();
}
