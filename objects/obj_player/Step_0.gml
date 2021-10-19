var movement = 0;

// Player movement
hsp = (keyboard_check(vk_right) - keyboard_check(vk_left));
vsp = (keyboard_check(vk_down) - keyboard_check(vk_up));

if (hsp > 0) {
	sprite_index = spr_player_r;
}
if (hsp < 0) {
	sprite_index = spr_player_l;
}

// Normalize speed if moving diagonally
if (hsp != 0 && vsp != 0) {
	movement = baseSpeed / sqrt(hsp * hsp + vsp * vsp);
} else {
	movement = baseSpeed; 
}

// Add turbo-bonus to speed if Shift is pressed
if ((hsp != 0 || vsp != 0) && keyboard_check(vk_shift)) {
	movement += 10;
}

x += hsp * movement;
y += vsp * movement;

// Check if player is out to screen bounds
if (x > room_width - sprite_width / 2) x = room_width - sprite_width / 2;
if (x <= sprite_width / 2) x = sprite_width / 2;
if (y > room_height - sprite_height / 2) y = room_height - sprite_height / 2;
if (y < sprite_height / 2) y = sprite_height / 2;