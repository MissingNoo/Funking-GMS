// Load from save.json
if global.music="tutorial"{
var f = file_text_open_read(working_directory + "assets/data/tutorial/tutorial.json"),
	json_str = "";
while (!file_text_eof(f)) {
	json_str += file_text_read_string(f);
    file_text_readln(f);
}
file_text_close(f);
var json_data = json_decode(json_str);
var song= ds_map_find_value(json_data, "song");
var notes = ds_map_find_value(song, "notes");
var section = ds_list_find_value(notes, "4");
var sectionNotes = ds_map_find_value(section, "sectionNotes");

for (var i = 0; i<=10; i++) {
    var note = ds_list_find_value(sectionNotes, i);
	if note != undefined {
		position = ds_list_find_value(note, "0");
		dir = ds_list_find_value(note, "1");
		if dir == 0 {
			instance_create(39,position,NoteEnemyLeft);
		}
		if dir == 1 {
			//a
		}
		if dir == 2 {
			//a
		}
		if dir == 3 {
			instance_create(39+130,position,NoteEnemyDown);
		}
		
	}
	else break;
}





}