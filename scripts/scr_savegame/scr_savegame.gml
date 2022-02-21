// Function save_savegame() checks if savefile already exists
// Then save maximum score to that file
function save_savegame(){
	if file_exists("save.dat") {
		var file = file_text_open_write("save.dat");
		file_text_write_real(file, global.record_score);
		file_text_close(file);
	}
}

// Function load_savegame() checks if savefile already exists
// Depending of check result, stored record will be assigned to a record_score
// Or will be created a new file with current record_score
// (it should be 0 by default as this function called on the start of the game)
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