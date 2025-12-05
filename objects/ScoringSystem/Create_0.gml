
// scoring data

global.score = 0;        // current score
global.max_score = 30;   // score cap (optional)

global.clothes = {
    top: pointer_null,
    bottom: pointer_null,
    hair: pointer_null,
    shoes: pointer_null,
    accessory: pointer_null,
    face: pointer_null
};


//ui update: star display

function update_score_ui(score)
{ 
    var stars_ids = layer_get_all_elements("stars");
    var stars = array_create(5);
    
    // get 5 star instances from layer
    for (var i = 0; i < 5; i++)
    {
        stars[i] = layer_instance_get_instance(stars_ids[i]);
        stars[i].image_speed = 0;
    }

    // update star frames based on score
    for (var i = 0; i < 5; i++)
    {
        if (i + 1 <= score / 5)
            stars[i].image_index = 1; // filled star
        else
            stars[i].image_index = 0; // empty star
    }
}



// check if clothing matches the round theme 

function item_matches_theme(item, round_theme)
{
    var arr = item.theme; // array of strings

    for (var i = 0; i < array_length(arr); i++)
    {
        if (arr[i] == round_theme)
            return true;
    }

    return false;
}



// clothing slot assignment

function set_clothing_item(clothing_item)
{
    switch (clothing_item.category)
    {
        case "fullbody":
            global.clothes.top = clothing_item;
            global.clothes.bottom = clothing_item;
        break;

        case "top":
            global.clothes.top = clothing_item;
            if (global.clothes.bottom != pointer_null 
            and global.clothes.bottom.category == "fullbody")
            {
                global.clothes.bottom = pointer_null;
            }
        break;

        case "bottom":
            global.clothes.bottom = clothing_item;
            if (global.clothes.top != pointer_null 
            and global.clothes.top.category == "fullbody")
            {
                global.clothes.top = pointer_null;
            }
        break;

        case "shoes":
            global.clothes.shoes = clothing_item;
        break;

        case "hair":
            global.clothes.hair = clothing_item;
        break;

        case "face":
            global.clothes.face = clothing_item;
        break;

        case "accessory":
            global.clothes.accessory = clothing_item;
        break;
    }
}
