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
		global.snd = audio_create_stream(working_directory + "assets/music/Tutorial_Inst.ogg");
	}
	if selected == 1 { 
		global.music="spookeez"; 
		global.snd = audio_create_stream(working_directory + "assets/music/Spookeez_Inst.ogg");
		global.voiceneeded =1;
		global.voice = audio_create_stream(working_directory + "assets/music/Spookeez_Voices.ogg");
	}
	if selected == 2 { 
		global.music="dadbattle"; 
		global.snd = audio_create_stream(working_directory + "assets/music/Dadbattle_Inst.ogg");
		global.voiceneeded =1;
		global.voice = audio_create_stream(working_directory + "assets/music/Dadbattle_Voices.ogg");
	}
	if selected == 3 { 
		global.music="tutorial"; 
		global.snd = audio_create_stream(working_directory + "assets/music/Tutorial_Inst.ogg");
	}
	if selected == 4 {
		global.music="tutorial"; 
		global.snd = audio_create_stream(working_directory + "assets/music/Tutorial_Inst.ogg");
	}
	if selected == 5 {
		global.music="tutorial"; 
		global.snd = audio_create_stream(working_directory + "assets/music/Tutorial_Inst.ogg");
	}
	global.musiclength = audio_sound_length(global.snd);
	show_debug_message("Music Length: " + string(global.musiclength));
	global.first = 0; 
	room_goto(Music);
}