spawnpoint @s ~ ~ ~ ~
execute at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2
tellraw @s {"text":"Checkpoint!","color":"gold","type":"text"}
scoreboard players set @s teddy.checkpointbool 1
return 1