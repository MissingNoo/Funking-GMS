// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NoteStep(){
	//spd=global.notespeed;
		y = y - spd;
}

function NoteStepEnemy(){
	if y <= NotesBar.y {
	//if global.first == 0 { 
	//	global.first = 1; 
	//	if global.voiceneeded == 1{ 
	//		audio_play_sound(global.voice,1,false); 
	//	}
	//}
	instance_destroy(self);
}
}