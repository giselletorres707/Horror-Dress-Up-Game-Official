global.score = 0;        // this is the current score
global.max_score = 30;    // each star value > threshold, starting with star 1 > 5


function set_score(score)
{
	global.score = score
	update_score_ui(score)
}

function update_score_ui(score)
{ 
	var stars_ids = layer_get_all_elements("stars")
	var stars = array_create(5)
	for(var i = 0; i < 5; i++) 
	{
		stars[i] = layer_instance_get_instance(stars_ids[i])
	}
	for (var i=0; i < 5; i+=1)
	{
        stars[i].image_speed = 0
		if (i + 1 <= score / 5)
		{
			stars[i].image_index = 1
		}
		else
		{
			stars[i].image_index = 0
		}
		show_debug_message(object_get_name(stars[i].object_index))
	}
}

update_score_ui(0)