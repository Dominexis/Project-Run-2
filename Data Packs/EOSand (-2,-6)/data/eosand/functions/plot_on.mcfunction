# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

scoreboard objectives add eosand.pipes dummy
scoreboard objectives add eosand.pipe_num dummy
scoreboard objectives add eosand.timer dummy
scoreboard objectives add eosand.door dummy
scoreboard objectives add eosand.timer_door dummy
scoreboard objectives add eosand.cutscenes dummy

bossbar add eosand:section_1 ["",{"text":"SECTION 1/4: ","bold":true},{"text":"█ ","color":"red"},{"text":"█ ","color":"dark_purple"},{"text":"█ ","color":"light_purple"},{"text":"█","color":"green"}]
bossbar set eosand:section_1 max 5

bossbar add eosand:section_2 ["",{"text":"SECTION 2/4: ","bold":true},{"text":"█ ","color":"yellow"},{"text":"█ ","color":"aqua"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"red"},{"text":"█ ","color":"aqua"},{"text":"█ ","color":"red"},{"text":"█ ","color":"yellow"},{"text":"█ ","color":"green"}]
# bossbar set eosand:section_2 max 5

bossbar add eosand:section_3 ["",{"text":"SECTION 3/4: ","bold":true},{"text":"█ ","color":"aqua"},{"text":"█ ","color":"yellow"},{"text":"█ ","color":"dark_purple"},{"text":"█ ","color":"red"},{"text":"█ ","color":"red"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"aqua"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"green"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"green"},{"text":"█ ","color":"yellow"}]

bossbar add eosand:section_4 ["",{"text":"SECTION 4/4: ","bold":true},{"text":"█ ","color":"red"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"dark_purple"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"red"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"green"},{"text":"█ ","color":"dark_purple"},{"text":"█ ","color":"yellow"},{"text":"█ ","color":"red"},{"text":"█ ","color":"yellow"},{"text":"█ ","color":"green"},{"text":"█ ","color":"yellow"},{"text":"█ ","color":"green"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"green"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"red"},{"text":"█ ","color":"light_purple"},{"text":"█ ","color":"red"},{"text":"█ ","color":"yellow"}]