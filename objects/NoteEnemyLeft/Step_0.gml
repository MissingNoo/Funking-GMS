y=y-spd;
if y <= NoteEnemy.ay {
	if global.first == 0 { 
		global.first = 1; 
		if global.voiceneeded == 1{ 
			audio_play_sound(global.voice,0,false); 
		}
	}
	instance_destroy(self);
}