/// @description 
if (playerControl){
//Get Player Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
key_swap_control = keyboard_check(vk_backspace);


// Swap Control

if (key_swap_control){
	with(oCat) playerControl = true;
	playerControl = false;
}

// Calculate Movement
var move = key_right - key_left;

hsp = move * walkspd;
vsp += grv;

if (place_meeting(x,y+1,oWall)) && (key_jump){
	vsp = -6;	
}
if (place_meeting(x,y+1,oBox)) && (key_jump){
	vsp = -6;	
}

// Horizontal Collision
if (place_meeting(x+hsp,y,oWall)){
	 while(!place_meeting(x+sign(hsp),y,oWall)){
		 x += sign(hsp);
	 }	 
	 hsp = 0;
}
if (place_meeting(x+hsp,y,oBox)){
	 while(!place_meeting(x+sign(hsp),y,oBox)){
		 x += sign(hsp);
	 }	 
	 hsp = 0;
}
x += hsp;

// Vertical Collision
if (place_meeting(x,y+vsp,oWall)){
	 while(!place_meeting(x,y+sign(vsp),oWall)){
		 y += sign(vsp);
	 }	 
	 vsp = 0;
}
if (place_meeting(x,y+vsp,oBox)){
	 while(!place_meeting(x,y+sign(vsp),oBox)){
		 y += sign(vsp);
	 }	 
	 vsp = 0;
}
y += vsp;
}