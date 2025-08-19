/// @description Auto Save
// You can write your code in this editor

// OverWrite old save file
if ( file_exists(SAVEFILE)) file_delete(SAVEFILE);

// Create new save file
var _file;
_file = file_text_open_write(SAVEFILE);
file_text_write_real(_file,room);
file_text_close(_file);

		
	





