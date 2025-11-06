global.score = 0;        // this is the current score
global.max_score = 30;    // each star value > threshold, starting with star 1 > 5
global.clothes = {
	top: pointer_null,
	bottom: pointer_null,
	hair: pointer_null,
	shoes: pointer_null,
	accessory: pointer_null,
	face: pointer_null
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

/// @function set_clothing_item(clothing_item)
/// @param {string} clothing_item the clothing item
function set_clothing_item(clothing_item) {
	//show_debug_message(clothing_item)
	switch(clothing_item.category) {
		case "fullbody":
		global.clothes.top = clothing_item
		global.clothes.bottom = clothing_item
		break;
		case "top":
		global.clothes.top = clothing_item
		if(global.clothes.bottom != pointer_null and global.clothes.bottom.category == "fullbody") {
			global.clothes.bottom = pointer_null
		}
		break;
		case "bottom":
		global.clothes.bottom = clothing_item
		if(global.clothes.top != pointer_null and global.clothes.top.category == "fullbody") {
			global.clothes.top = pointer_null
		}
		break;
		case "shoes":
		global.clothes.shoes = clothing_item
		break;
		case "hair":
		global.clothes.hair = clothing_item
		break;
		case "face":
		global.clothes.face = clothing_item
		break;
		case "accessory":
		global.clothes.accessory = clothing_item
		break;
	}
}