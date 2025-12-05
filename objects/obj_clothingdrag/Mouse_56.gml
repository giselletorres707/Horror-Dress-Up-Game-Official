if (is_dragging)
{
    is_dragging = false;

    if (position_meeting(mouse_x, mouse_y, obj_body))
    {
        audio_play_sound(sfx_Zipper, 1, 0);

        // Use the shared equip logic
        scr_equip_clothing(self);
    }

    // Destroy the drag-preview object itself
    instance_destroy();
}
