// Initial spawn rate for enemies
spawnRate = 60;

load_savegame();

global.gameOver = false;
global.playerScore = 0;
global.enemySpeedBoost = 0;

// Font
draw_set_color(c_white);
draw_set_font(fnt_wacky);

// Text variables
total_score_text = "RECORD: ";
start_text = "PRESS ENTER TO START";
exit_text = "\nPRESS ESCAPE TO EXIT";
game_over_a_text = "GAME OVER!\nYOUR SCORE: ";
game_over_b_text = "\nPRESS R TO START AGAIN\nOR\nPRESS ESCAPE TO EXIT"; 
