global.letters = [
	{ sprite: spr_gothic_letter, theme: "gothic" },
	{ sprite: spr_cute_letter, theme: "cute"},
	{ sprite: spr_cool_letter, theme: "cool"},
]

var letter = global.letters[floor(random(array_length(global.letters)))]
instance_create_layer(768, 352, "Letter", obj_letter, letter)