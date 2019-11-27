var w = 1; 
var gridSize=64;

draw_set_color(c_orange);

for (var i = 0; i < room_height; i+=gridSize){ 
	draw_line_width(0, i, room_width, i,w);
}

for (var i = 0; i < room_width; i+=gridSize){
	draw_line_width(i, 0, i, room_width,w);
}

//Ritar upp ett rutmönster