// Register inputs here so everything else in the game can operate against them without rechecking keys
global.inputs = {
	up: keyboard_check(vk_up) || keyboard_check(ord("W")),
	down: keyboard_check(vk_down) || keyboard_check(ord("S")),
	left: keyboard_check(vk_left) || keyboard_check(ord("A")),
	right: keyboard_check(vk_right) || keyboard_check(ord("D")),
	pause: keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("P")),
}
