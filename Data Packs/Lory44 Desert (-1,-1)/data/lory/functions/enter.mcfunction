attribute @s minecraft:generic.max_health base set 10

tag @s add pr.plate_checkpoint
scoreboard players set @s lory.npc.raft_keeper.cooldown 20

execute store result score @s lory.boat_id run scoreboard players add #global lory.boat_id 1


# effect give @s minecraft:resistance infinite 5 true

