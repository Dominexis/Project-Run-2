#mark the checkpoint locations with particles
execute at @e[type=minecraft:marker,tag=check,tag=pr.target] run particle minecraft:scrape ~ ~ ~ 0.07 0.5 0.07 0 1 normal
#at the location of the checkpoint, apply the correspondent function for the player who is at a checkpoint that is not their current checkpoint 
execute at @e[type=minecraft:marker,tag=check,tag=1,tag=pr.target] as @a[distance=1..2,tag=!check1,tag=pr.target] run function cds28:check1
execute at @e[type=minecraft:marker,tag=check,tag=2,tag=pr.target] as @a[distance=1..2,tag=!check2,tag=pr.target] run function cds28:check2
execute at @e[type=minecraft:marker,tag=check,tag=3,tag=pr.target] as @a[distance=1..2,tag=!check3,tag=pr.target] run function cds28:check3
execute at @e[type=minecraft:marker,tag=check,tag=4,tag=pr.target] as @a[distance=1..2,tag=!check4,tag=pr.target] run function cds28:check4
execute at @e[type=minecraft:marker,tag=check,tag=5,tag=pr.target] as @a[distance=1..2,tag=!check5,tag=pr.target] run function cds28:check5
execute at @e[type=minecraft:marker,tag=check,tag=6,tag=pr.target] as @a[distance=1..2,tag=!check6,tag=pr.target] run function cds28:check6
execute at @e[type=minecraft:marker,tag=check,tag=7,tag=pr.target] as @a[distance=1..2,tag=!check7,tag=pr.target] run function cds28:check7
execute at @e[type=minecraft:marker,tag=check,tag=8,tag=pr.target] as @a[distance=1..2,tag=!check8,tag=pr.target] run function cds28:check8
#the checkpoints are used when the player activates any of the pinball levers, if the player is standing on one of the levers, the player is tagged as "teleporting" to run the function lever later
execute positioned ~17.8 ~6 ~2.8 as @a[dx=1.4,dy=0,dz=1.4,tag=pr.target] at @s unless block ~ ~-0.1 ~ minecraft:air run tag @s add teleporting
execute positioned ~9.8 ~6 ~2.8 as @a[dx=1.4,dy=0,dz=1.4,tag=pr.target] at @s unless block ~ ~-0.1 ~ minecraft:air run tag @s add teleporting
execute positioned ~9.8 ~6 ~-5.2 as @a[dx=1.4,dy=0,dz=1.4,tag=pr.target] at @s unless block ~ ~-0.1 ~ minecraft:air run tag @s add teleporting
execute positioned ~17.8 ~6 ~-5.2 as @a[dx=1.4,dy=0,dz=1.4,tag=pr.target] at @s unless block ~ ~-0.1 ~ minecraft:air run tag @s add teleporting
execute positioned ~17.8 ~6 ~-38.2 as @a[dx=1.4,dy=0,dz=1.4,tag=pr.target] at @s unless block ~ ~-0.1 ~ minecraft:air run tag @s add teleporting
execute positioned ~8.8 ~6 ~29.8 as @a[dx=1.4,dy=0,dz=1.4,tag=pr.target] at @s unless block ~ ~-0.1 ~ minecraft:air run tag @s add teleporting
execute positioned ~-9.2 ~18 ~14.8 as @a[dx=1.4,dy=0,dz=1.4,tag=pr.target] at @s unless block ~ ~-0.1 ~ minecraft:air run tag @s add teleporting
execute positioned ~-32.2 ~18 ~-3.2 as @a[dx=1.4,dy=0,dz=1.4,tag=pr.target] at @s unless block ~ ~-0.1 ~ minecraft:air run tag @s add teleporting
execute positioned ~-31.2 ~18 ~-32.2 as @a[dx=1.4,dy=0,dz=1.4,tag=pr.target] at @s unless block ~ ~-0.1 ~ minecraft:air run tag @s add teleporting
#this run the commands to teleport the player to the checkpoint and a small animation
execute as @a[tag=teleporting,tag=pr.target] run function cds28:lever

return 1