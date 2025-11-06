var type = category
if (type == "fullbody")
	type = "top"
if(struct_get(global.clothes, type) != self) {
	show_debug_message(struct_get(global.clothes, type))
	ScoringSystem.set_clothing_item(self)
}