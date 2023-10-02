
loot replace block ~ ~ ~ container.0 loot lory:barrel_raft 

execute as @a[tag=pr.target,tag=!lory.has_raft] store result score @s lory.var run clear @s minecraft:bamboo_raft 0
execute as @a[tag=pr.target] run clear @s minecraft:bamboo_raft

execute as @a[tag=pr.target,tag=!lory.has_raft,scores={lory.var=1..}] run tag @s add lory.has_raft
advancement grant @a[tag=pr.target,tag=lory.has_raft,scores={lory.var=1..}] only lory:inventory
tellraw @a[tag=pr.target,tag=lory.has_raft,scores={lory.var=1..}] ["",{"text":"You found the raft of the ","color":"gray"},{"text":"Raft Keeper","color":"light_purple"},{"text":", go back & give it to him!","color":"gray"}]

playsound minecraft:block.note_block.pling master @a[tag=pr.target,tag=lory.has_raft,scores={lory.var=1..}] ~ ~ ~ 3 2

execute as @a[tag=pr.target,tag=lory.has_raft,scores={lory.var=1..}] run scoreboard players reset @s lory.var
