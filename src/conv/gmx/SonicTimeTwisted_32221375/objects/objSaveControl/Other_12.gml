/// @description  Delete a slot
var filename = save_file_name(slots[selectCheck].slotNumber);
slots[selectCheck].visiblePast=0;
slots[selectCheck].visibleFuture=0;
stt_file_delete(filename);
stt_save_files();
slots[selectCheck].iconIndex = 0;
slots[selectCheck].characterSelect=1;
slots[selectCheck].alarm[0] = 1;
slots[selectCheck].lastFutureLevel = 0;
slots[selectCheck].lastPastLevel = 0;

