// Default invisible
visible = false;

// Show DressUp instance only in DressUpRoom
if (visible_in_dressup && room == DressUpRoom) {
    visible = true;
}

// Show Horror instance only in HorrorRoom
if (visible_in_horror && room == HorrorRoom) {
    visible = true;
}
