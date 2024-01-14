#detect if the player is standing on any of the lauch platforms and apply the correspondent function (launch1...launch6)
execute positioned ~11.8 ~16 ~26.8 as @a[dx=0.4,dy=1,dz=2.4,tag=pr.target,scores={timerCDs=..1}] at @s unless block ~ ~-0.1 ~ minecraft:air run function cds28:launch1
execute positioned ~-3.2 ~30 ~23.8 as @a[dx=0.4,dy=1,dz=2.4,tag=pr.target,scores={timerCDs=..1}] at @s unless block ~ ~-0.1 ~ minecraft:air run function cds28:launch2
execute positioned ~21.8 ~47 ~21.8 as @a[dx=0.4,dy=1,dz=2.4,tag=pr.target,scores={timerCDs=..1}] at @s unless block ~ ~-0.1 ~ minecraft:air run function cds28:launch3
execute positioned ~-0.2 ~31 ~-34.2 as @a[dx=0.4,dy=1,dz=2.4,tag=pr.target,scores={timerCDs=..1}] at @s unless block ~ ~-0.1 ~ minecraft:air run function cds28:launch4
execute positioned ~-21.2 ~51 ~3.8 as @a[dx=2.4,dy=1,dz=0.4,tag=pr.target,scores={timerCDs=..1}] at @s unless block ~ ~-0.1 ~ minecraft:air run function cds28:launch5
execute positioned ~30.8 ~31 ~-8.2 as @a[dx=2.4,dy=1,dz=0.4,tag=pr.target,scores={timerCDs=..1}] at @s unless block ~ ~-0.1 ~ minecraft:air run function cds28:launch6
return 1