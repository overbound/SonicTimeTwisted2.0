/// @description Check if the chant should be stopped...

if (chantAsset && !audio_is_playing(chantInstance)) {
    audio_stop_sound(chantInstance);
    chantInstance = -1;
    audio_destroy_stream(chantAsset);
    chantAsset = -1;
    show_debug_message("Localized chant stopped.");
}


