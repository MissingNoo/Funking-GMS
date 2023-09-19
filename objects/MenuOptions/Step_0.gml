var _updown = - keyboard_check_pressed(vk_up) + keyboard_check_pressed(vk_down);
if(_updown != 0){
	selected += _updown;
	now = [0, 0, 0];
}
if(selected > array_length(options) - 1){
	selected = 0;
}
if(selected < 0){
	selected = array_length(options) - 1;
}

for (i = 0; i < array_length(maxSprites); i++) {
	maxSprites[i] = array_length(spr[Sprites.mainmenuSprites][i][0]);
	if(selected == i){
		maxSprites[selected] = array_length(spr[Sprites.mainmenuSprites][selected][1]);
	}
}


if (keyboard_check_pressed(vk_enter)) {
	if (selected == menuSprites.storyMode) {
		room_goto(WeekMenu);
	}
}
for (i = 0; i < array_length(now); i++) {
	now[i] += .25;
	if (now[i] >= maxSprites[i]) { now[i] = 0; }
}