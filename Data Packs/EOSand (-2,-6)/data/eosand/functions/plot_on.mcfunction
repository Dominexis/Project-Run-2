# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

scoreboard objectives add eosand.pipes dummy
scoreboard objectives add eosand.pipe_num dummy
scoreboard objectives add eosand.timer dummy
scoreboard objectives add eosand.door dummy
scoreboard objectives add eosand.timer_door dummy
scoreboard objectives add eosand.cutscenes dummy
scoreboard objectives add eosand.junctions dummy

bossbar add eosand:section_1 ["",{"text":"SECTION 1/4: ","bold":true,"type":"text"},{"text":"█ ","color":"red","type":"text"},{"text":"█ ","color":"dark_purple","type":"text"},{"text":"█ ","color":"light_purple","type":"text"},{"text":"█","color":"green","type":"text"}]
bossbar set eosand:section_1 max 5

bossbar add eosand:section_2 ["",{"text":"SECTION 2/4: ","bold":true,"type":"text"},{"text":"█ ","color":"yellow","type":"text"},{"text":"█ ","color":"aqua","type":"text"},{"text":"█ ","color":"light_purple","type":"text"},{"text":"█ ","color":"light_purple","type":"text"},{"text":"█ ","color":"red","type":"text"},{"text":"█ ","color":"aqua","type":"text"},{"text":"█ ","color":"red","type":"text"},{"text":"█ ","color":"yellow","type":"text"},{"text":"█ ","color":"green","type":"text"}]
# bossbar set eosand:section_2 max 5

bossbar add eosand:section_3 ["",{"text":"SECTION 3/4: ","bold":true,"type":"text"},{"text":"█ ","color":"aqua","type":"text"},{"text":"█ ","color":"yellow","type":"text"},{"text":"█ ","color":"dark_purple","type":"text"},{"text":"█ ","color":"red","type":"text"},{"text":"█ ","color":"red","type":"text"},{"text":"█ ","color":"light_purple","type":"text"},{"text":"█ ","color":"aqua","type":"text"},{"text":"█ ","color":"light_purple","type":"text"},{"text":"█ ","color":"green","type":"text"},{"text":"█ ","color":"light_purple","type":"text"},{"text":"█ ","color":"green","type":"text"},{"text":"█ ","color":"yellow","type":"text"}]

bossbar add eosand:section_4 ["",{"text":"SECTION 4/4: ","bold":true,"type":"text"},{"text":"█ ","color":"red","type":"text"},{"text":"█ ","color":"light_purple","type":"text"},{"text":"█ ","color":"dark_purple","type":"text"},{"text":"█ ","color":"light_purple","type":"text"},{"text":"█ ","color":"red","type":"text"},{"text":"█ ","color":"light_purple","type":"text"},{"text":"█ ","color":"green","type":"text"},{"text":"█ ","color":"dark_purple","type":"text"},{"text":"█ ","color":"yellow","type":"text"},{"text":"█ ","color":"red","type":"text"},{"text":"█ ","color":"yellow","type":"text"},{"text":"█ ","color":"green","type":"text"},{"text":"█ ","color":"yellow","type":"text"},{"text":"█ ","color":"green","type":"text"},{"text":"█ ","color":"light_purple","type":"text"},{"text":"█ ","color":"green","type":"text"},{"text":"█ ","color":"light_purple","type":"text"},{"text":"█ ","color":"red","type":"text"},{"text":"█ ","color":"light_purple","type":"text"},{"text":"█ ","color":"red","type":"text"},{"text":"█ ","color":"yellow","type":"text"}]
return 1