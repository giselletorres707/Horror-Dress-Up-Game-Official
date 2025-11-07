
if(room == ScoringRoom) {
	struct_foreach(global.clothes, function(category, clothing_item)
	{
		if (not clothing_item or clothing_item.theme != global.theme)
			return;
		if (category == "fullbody")
			global.score += clothing_item.score / 2;
		else
			global.score += clothing_item.score
	});
	update_score_ui(global.score);
}
