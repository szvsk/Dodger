// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_savegame(){
	if file_exists("save.dat") {
		var file = file_text_open_write("save.dat");
		file_text_write_real(file, global.record_score);
		file_text_close(file);
	}
}

function load_savegame(){
	if file_exists("save.dat") {
		var file = file_text_open_read("save.dat");
		global.record_score = file_text_read_real(file);
		file_text_close(file);
	} else {
		global.record_score = 0;
		var file = file_text_open_write("save.dat");
		file_text_write_real(file, global.record_score);
		file_text_close(file);
	}
}