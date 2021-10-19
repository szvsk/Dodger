// Player movement
hsp = keyboard_check(vk_right) - keyboard_check(vk_left);
vsp = keyboard_check(vk_down) - keyboard_check(vk_up);

x += hsp * playerSpeed;
y += vsp * playerSpeed;