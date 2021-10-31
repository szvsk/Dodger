// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gameover(){
	if (global.playerScore > global.record_score) {
		global.record_score = global.playerScore;
	}
	
	global.gameOver = true;
}