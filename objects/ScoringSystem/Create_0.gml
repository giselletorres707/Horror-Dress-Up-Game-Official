// global.score = 0;        // this is the current score
 global.max_score = 25;    // total number of stars




function update_score_ui(score)
{ 
	var stars_ids = layer_get_all_elements("stars_ui")
var stars = array_create(5)
for (var i = 0; i < 5; ++i) {
    stars[i]= instance_id[stars_ids[i]]
}
	for (var i=0; i < 5; i+=1)
	{
	
        stars[i].image_index = score/5>=i+1 ? 1 : 0 
	    stars[i].image_speed = 0
		show_debug_message( stars[i].image_index)
	}
}

update_score_ui(20)