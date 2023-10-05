spawnpoint @s ~ ~ ~ ~ 
execute at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 2
tellraw @s {"text":"Checkpoint!","color":"gold"}
scoreboard players set @s teddy.checkpointbool 1