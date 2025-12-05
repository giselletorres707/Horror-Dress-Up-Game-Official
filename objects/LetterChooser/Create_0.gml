global.letters = [
	{ sprite: spr_gothic_letter, theme: "gothic" },
	{ sprite: spr_cool_letter, theme: "cool"},
	{ sprite: spr_letter_desperate, theme: "casual"},
]

var letter = global.letters[floor(global.level_index)]
instance_create_layer(768, 352, "Letter", obj_letter, letter)