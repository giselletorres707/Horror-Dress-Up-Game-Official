global.letters = [
	{ sprite: spr_test_letter, theme: "cute" }, // Test Letter
]

var letter = global.letters[floor(random(array_length(global.letters)))]
instance_create_layer(500, 500, "Letter", obj_letter, letter)