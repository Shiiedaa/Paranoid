/// @description Update Camera
// You can write your code in this editor

// Update destination 
if ( instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
	
	if((follow).object_index == obj_player_dead)
	{
		x = xTo;
		y = yTo;
	}
}

// Update Object Position
x += (xTo -x) / 25;
y += (yTo -y) / 25;

// Keep camera center inside room
x= clamp(x,view_w_half + buff,room_width-view_w_half - buff);
y= clamp(y,view_h_half + buff,room_height-view_h_half - buff);

// Screen shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

// Update Camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half );

// X coordinates
if(room != Menu_room) && (room != room_ending)
{
	if( layer_exists("layer10"))

	{
		layer_x("layer10", x/2);
	}

	if( layer_exists("layer9"))
	{
		layer_x("layer9", x/3);
	}

	if( layer_exists("layer8"))
	{
		layer_x("layer8", x/4);
	}

	if( layer_exists("layer7"))
	{
		layer_x("layer7", x/5);
	}

	if( layer_exists("layer6"))
	{
		layer_x("layer6", x/10);
	}
	if( layer_exists("layer5"))
	{
		layer_x("layer5", x/15);
	}
}
