/// @description 

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var move =  key_right - key_left;

hsp = move * walkspd;

if (place_meeting(x+hsp,y,oWall)){
	 x =x;
}
	

x += walkspd;