// Load from save.json
ycalc =  NotesBar.y + (NotesBar.arrowDOWN[0,3]/2);
oL = 0;
oU = 0;
oD = 0;
oR = 0;
global.notespeed = 16.5;
bpm = 0;
pos = 0;
length = 0;
percent=0;
global.first=0;
//show_debug_overlay(true);
//global.notespeed=15;
//Load Music

var f = file_text_open_read(working_directory + "assets/data/"+ global.music + "/" + global.music + ".json"),
json_str = ""; 
while (!file_text_eof(f)) {
	json_str += file_text_read_string(f);
	file_text_readln(f);
}
file_text_close(f);

//Load Notes
var json_data = json_decode(json_str);
sections = ds_map_find_value(json_data, "sections");
bpm = ds_map_find_value(json_data, "bpm");
global.bpm = bpm;
if(global.bpm == 0){
	global.bpm = 100;
}
if sections == undefined sections = 63;
var song= ds_map_find_value(json_data, "song");
musicName = ds_map_find_value(song, "song");
var notes = ds_map_find_value(song, "notes");
for (var i = 0; i<sections; i++) {
	var section = ds_list_find_value(notes, i);
	var playernote = ds_map_find_value(section, "mustHitSection");
	var sectionNotes = ds_map_find_value(section, "sectionNotes");
	//show_debug_message("secNotes: " + string(sectionNotes));
	for (var j = 0; j<=sectionNotes; j++) {
		var note = ds_list_find_value(sectionNotes, j);
		if (note != undefined) {
			position = ds_list_find_value(note, "0");
			dir = ds_list_find_value(note, "1");
			switch (dir){
				default:
					dir = Sprites.noteLeft;
					break;
				case 0:
					dir = Sprites.noteLeft;
					break;
				case 1:
					dir = Sprites.noteDown;
					break;
				case 2:
					dir = Sprites.noteUp;
					break;
				case 3:
					dir = Sprites.noteRight;
					break;
			}
			if (playernote) {instance_create_layer(x, position, "Notes", oPlayerNote, {noteDir : dir, bpm});}
			else {instance_create_layer(x, position, "Notes", oNoteEnemy, {noteDir : dir, bpm});}
			ds_list_destroy(note);
		}else break;	
	}
	ds_map_destroy(section);
}
show_debug_message("Song: " + musicName +
"\nBPM: " + string(bpm) +
"\nSections:" + string(sections) +
"\nNotes:" + string(notes)
);

ds_list_destroy(notes);
ds_map_destroy(json_data);

music = audio_play_sound(global.snd,0,false);
if global.voice != undefined voice = audio_play_sound(global.voice,0,false);