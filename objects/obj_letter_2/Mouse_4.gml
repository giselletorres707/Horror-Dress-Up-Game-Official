if visible = true 
{
audio_play_sound(snd_crumbling, 1, false);

}
visible = false;

with (obj_restart_button)
{
    visible = true;       // shows up
    depth = -10000;      
}