### Handles starting jingle
# Called by start/tick

execute if score @s sdmc.start-jingle matches 0 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.334840
execute if score @s sdmc.start-jingle matches 8 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.414214
execute if score @s sdmc.start-jingle matches 16 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.681793
execute if score @s sdmc.start-jingle matches 16 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.667420
execute if score @s sdmc.start-jingle matches 24 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.781797
execute if score @s sdmc.start-jingle matches 24 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.529732
execute if score @s sdmc.start-jingle matches 24 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.667420
execute if score @s sdmc.start-jingle matches 24 run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 0.890899

execute if score @s sdmc.start-jingle matches 24.. run scoreboard players reset @s sdmc.start-jingle
execute if score @s sdmc.start-jingle matches 0.. run scoreboard players add @s sdmc.start-jingle 1
return 1