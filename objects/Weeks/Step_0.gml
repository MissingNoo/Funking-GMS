/// @description 
if keyboard_check_pressed(vk_down){
	if selected == 6 selected = 0;
	else selected++;
}
if keyboard_check_pressed(vk_up){
	if selected == 0 selected = 6;
	else selected--;
}
if keyboard_check_pressed(vk_enter){
	if selected == 0 {
		global.music="tutorial";
		room_goto(Music);	
	}
}