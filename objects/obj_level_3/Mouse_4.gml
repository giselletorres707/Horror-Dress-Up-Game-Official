if (visible == true)
{
	audio_play_sound(sfx_button, 1, false);
	room_goto(DressUpRoom)
	instance_destroy(obj_level_2)
}