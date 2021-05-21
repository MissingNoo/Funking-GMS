/// @description 
//if keyboard_check_pressed(vk_up) global.notespeed+=.10;
//if keyboard_check_pressed(vk_down) global.notespeed-=.10;
length = audio_sound_length(music);
pos = audio_sound_get_track_position(music);
global.songposition = pos;
percent = (pos/length)*100;
oL = instance_nearest(NotesBar.xp, ycalc, NotePlayerLeft);
oD = instance_nearest(NotesBar.xp, ycalc, NotePlayerDown);
oU = instance_nearest(NotesBar.xp, ycalc, NotePlayerUp);
oR = instance_nearest(NotesBar.xp, ycalc, NotePlayerRight);
#region speed
if (percent > 10 and percent < 19) global.notespeed = 16.60;
if (percent > 20 and percent < 29) global.notespeed = 16.65;
if (percent > 30 and percent < 39) global.notespeed = 16.70;
if (percent > 40 and percent < 49) global.notespeed = 16.75;
if (percent > 50 and percent < 59) global.notespeed = 16.80;
if (percent > 60 and percent < 69) global.notespeed = 16.85;
if (percent > 70 and percent < 79) global.notespeed = 16.90;
if (percent > 80 and percent < 89) global.notespeed = 16.95;
if (percent > 90) global.notespeed = 17;
#endregion
if keyboard_check_pressed(vk_left){
	py = (oL.y - ycalc) + NotesBar.arrowDOWN[0,3]/2;
	if py < 100 and py > -100 { 
		if py < 0 score += py*-1;	
		else score += py;
		instance_destroy(oL);
	}
}
if keyboard_check_pressed(vk_right){
	py = (oR.y - ycalc) + NotesBar.arrowDOWN[0,3]/2;
	if py < 100 and py > -100 { 
		if py < 0 score += py*-1;	
		else score += py;
		instance_destroy(oR);
	}
}
if keyboard_check_pressed(vk_up){
	py = (oU.y - ycalc) + NotesBar.arrowDOWN[0,3]/2;
	if py < 100 and py > -100 { 
		if py < 0 score += py*-1;	
		else score += py;
		instance_destroy(oU);
	}
}
if keyboard_check_pressed(vk_down){
	py = (oD.y - ycalc) + NotesBar.arrowDOWN[0,3]/2;
	if py < 100 and py > -100 { 
		if py < 0 score += py*-1;	
		else score += py;
		instance_destroy(oD);
	}
}