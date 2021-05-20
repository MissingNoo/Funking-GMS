if keyboard_check_pressed(vk_down) {
	if selected == 2 selected = 0;
	else selected++;
}
if keyboard_check_pressed(vk_up) {
	if selected == 0 selected = 2;
	else selected--;
}
if keyboard_check_pressed(vk_enter) {
	if selected == 0 {
		room_goto(WeekMenu);
	}
}
if now == array_length(Free)-1 { now = 0; }
now = now+.5;
if noww == array_length(FreeW)-1 { noww = 0; }
noww = noww+.25;