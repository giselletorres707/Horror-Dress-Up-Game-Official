room_goto(MainMenu)
audio_stop_all();

with (all) {
    if (persistent) {
        instance_destroy();
    }
}