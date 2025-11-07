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
