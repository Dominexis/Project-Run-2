
tellraw @s [{"text":"[The Raft Keeper]: ","color":"gold","type":"text"},{"text":"Thank you very much! I knew you could do it! Now, if you want to reach the city, descend the waterfall, travel across the river and under the bridges. There you will find a docking area, & your adventure will continue!","color":"gray","type":"text"}]
scoreboard players set @s lory.npc.raft_keeper.cooldown 2147483647
tag @s remove lory.has_raft
clear @s
execute at 0073bfd4-016d-1b4b-0001-320713876e6e run summon minecraft:boat ~34 ~18 ~36 {Type:"bamboo",Rotation:[180.0f,0.0f],Tags:["lory.target","pr.target"]}
scoreboard players operation @e[type=minecraft:boat,tag=pr.target,tag=lory.target,limit=1] lory.boat_id = @s lory.boat_id
tag @e[type=minecraft:boat,tag=pr.target] remove lory.target
return 1