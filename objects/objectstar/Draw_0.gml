global.score = 0;        // this is the current score
global.max_score = 5;    // total number of stars

// star bar UI position
var x_start = 20;
var y_start = 20;
var spacing = 40; // distance between stars

// draw stars based on prompt
for (var i = 0; i < global.max_score; i++) {
    var x = x_start + (i * spacing);

    if (i < global.score) {
        draw_sprite(spr_star_filled, 0, x, y_start);
    } else {
        draw_sprite(spr_star_empty, 0, x, y_start);
    }
}

equipped = false;  // Has this piece already been scored?

if (!equipped) {
    equipped = true;
    global.score = clamp(global.score + 1, 0, global.max_score);
}

// need to add points to each asset - difficult to implement //