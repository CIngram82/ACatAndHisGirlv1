/// @description Move to next room
with (oGirl){
	if (playerControl){
		playerControl = false;
		SlideTransition(TRANS_MODE.GOTO,other.target);
	}
}