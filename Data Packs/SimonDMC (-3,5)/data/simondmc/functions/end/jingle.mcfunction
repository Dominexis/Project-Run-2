### Handles ending jingle
# Called by end/tick

execute if score @s sdmc.end-jingle matches 0 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.587401
execute if score @s sdmc.end-jingle matches 0 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.890899
execute if score @s sdmc.end-jingle matches 0 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.561231
execute if score @s sdmc.end-jingle matches 0 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.667420
execute if score @s sdmc.end-jingle matches 8 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.334840
execute if score @s sdmc.end-jingle matches 16 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.498307
execute if score @s sdmc.end-jingle matches 16 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.594604
execute if score @s sdmc.end-jingle matches 16 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.749154
execute if score @s sdmc.end-jingle matches 16 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.890899
execute if score @s sdmc.end-jingle matches 32 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.587401
execute if score @s sdmc.end-jingle matches 32 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.793701
execute if score @s sdmc.end-jingle matches 32 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.000000
execute if score @s sdmc.end-jingle matches 32 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.594604
execute if score @s sdmc.end-jingle matches 48 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.587401
execute if score @s sdmc.end-jingle matches 48 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2.000000
execute if score @s sdmc.end-jingle matches 48 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.189207

# Send back to lobby
execute if score @s sdmc.end-jingle matches 64.. run function simondmc:end/send_back
execute if score @s sdmc.end-jingle matches 0.. run scoreboard players add @s sdmc.end-jingle 1
return 1