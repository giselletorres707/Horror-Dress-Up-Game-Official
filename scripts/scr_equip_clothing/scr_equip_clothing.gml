
///creates the equipped clothing on the body
///destroys the previous clothing in that slot
///clears conflicting slots 

function scr_equip_clothing(argument0)
{
    var src = argument0;

    // Find the body
    var body = instance_find(obj_body, 0);
    if (body == noone) return;

    // Metadata that each drag object will provide
    var equip_object = src.equip_object; // which object to create
    var slot_name    = src.slot_name;    // string: "current_hair", "current_top", etc.
    var dx           = src.equip_dx;     // x offset from body
    var dy           = src.equip_dy;     // y offset from body

    // Create the equipped clothing instance
    var new_item = instance_create_layer(body.x + dx, body.y + dy, "Body", equip_object);
    new_item.mode     = "drag";
    new_item.visible  = true;
    new_item.equipped = true;

    //Destroy previously equipped item in THIS slot
    if (is_string(slot_name))
    {
        if (variable_instance_exists(body, slot_name))
        {
            var old_inst = variable_instance_get(body, slot_name);
            if (instance_exists(old_inst))
            {
                instance_destroy(old_inst);
            }
        }

        //store new item in this slot on the body
        variable_instance_set(body, slot_name, new_item);
    }

    //Handle conflicts 
    if (!is_undefined(src.conflicts) && is_array(src.conflicts))
    {
        var len = array_length(src.conflicts);
        for (var i = 0; i < len; i++)
        {
            var conflict_slot_name = src.conflicts[i];

            if (variable_instance_exists(body, conflict_slot_name))
            {
                var inst_conflict = variable_instance_get(body, conflict_slot_name);
                if (instance_exists(inst_conflict))
                {
                    instance_destroy(inst_conflict);
                }

                // Clear the slot
                variable_instance_set(body, conflict_slot_name, noone);
            }
        }
    }

    return new_item;
}
