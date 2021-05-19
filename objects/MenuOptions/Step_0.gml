if keyboard_check_pressed(vk_down) {
	if selected == 2 selected = 0;
	else selected++;
}
if keyboard_check_pressed(vk_up) {
	if selected == 0 selected = 2;
	else selected--;
}
//if now == array_length(Free)-1 { now = 0; }
//now = now+.5;