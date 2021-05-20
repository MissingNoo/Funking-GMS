// Load from save.json
show_debug_overlay(true);
global.nx=39;
//global.notespeed=15;
if global.music="tutorial"{
	var f = file_text_open_read(working_directory + "assets/data/tutorial/tutorial.json"),
	json_str = "";
	while (!file_text_eof(f)) {
		json_str += file_text_read_string(f);
		file_text_readln(f);
	}
	file_text_close(f);
}
var json_data = json_decode(json_str);
var song= ds_map_find_value(json_data, "song");
var notes = ds_map_find_value(song, "notes");
sections = ds_map_find_value(json_data, "sections");
for (var i = 0; i<sections; i++) {
	var section = ds_list_find_value(notes, i);
	var playernote = ds_map_find_value(section, "mustHitSection");
	var sectionNotes = ds_map_find_value(section, "sectionNotes");
	for (var j = 0; j<=25; j++) {
		var note = ds_list_find_value(sectionNotes, j);
		if note != undefined {
			position = ds_list_find_value(note, "0");
			dir = ds_list_find_value(note, "1");
			if dir == 0 {
				if playernote == 1 { instance_create(global.nx,position,NotePlayerLeft); }
				else instance_create(global.nx,position,NoteEnemyLeft);
			}
			if dir == 1 {
				if playernote == 1 { instance_create(global.nx,position,NotePlayerDown); }
				else instance_create(global.nx,position,NoteEnemyDown);
			}
			if dir == 2 {
				if playernote == 1 { instance_create(global.nx,position,NotePlayerUp); }
				else instance_create(global.nx,position,NoteEnemyUp);
			}
			if dir == 3 {
				if playernote == 1 { instance_create(global.nx,position,NotePlayerRight); }
				else instance_create(global.nx,position,NoteEnemyRight);
			}
			//show_message(string(position));
		}else break;
	}
}
show_debug_message("deleting json data");
ds_map_destroy(playernote);
ds_list_destroy(sectionNotes);
ds_map_destroy(section);
ds_list_destroy(notes);
ds_map_destroy(json_data);
snd=audio_create_stream(working_directory + "assets/music/Tutorial_Inst.ogg");
audio_play_sound(snd,0,false);