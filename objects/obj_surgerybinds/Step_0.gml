// find the limb_obj with same "slot"
var parent = noone;

with (obj_limbs){
    if (other.slot == slot) {
        parent = id;
        break;
    }
}

// if matching limb_obj	instance exists and is visible, hide this
if (instance_exists(parent) && parent.visible) {
    visible = false;
} else {
    visible = true;
}
