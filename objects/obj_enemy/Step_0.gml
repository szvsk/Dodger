y += movementSpeed;

if (y > room_height) {
	global.playerScore += 1;
	instance_destroy();
}
	