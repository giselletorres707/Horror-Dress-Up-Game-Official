// Only score in the scoring room
if (room == ScoringRoom)
{
    // Reset score before calculating
    global.score = 0;

    // Loop through clothing slots
    struct_foreach(global.clothes, function(category, clothing_item)
    {
        // Skip empty slots
        if (!clothing_item)
            return;

        // Skip items that don't match the round's theme
        if (!item_matches_theme(clothing_item, global.theme))
            return;

        // Score handling
        // If you use "points" instead of "score", replace clothing_item.score with clothing_item.points

        if (category == "fullbody")
            global.score += clothing_item.score / 2;
        else
            global.score += clothing_item.score;
    });

    // Clamp score if desired
    global.score = clamp(global.score, 0, global.max_score);

    // Update stars UI
    update_score_ui(global.score);
}

