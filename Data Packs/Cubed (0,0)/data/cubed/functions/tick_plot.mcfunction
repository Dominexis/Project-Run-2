# Handle checkpoints

execute positioned ~29 ~25 ~-18 as @a[ tag=pr.target,distance=..3,scores={cubed.checkpoint=0}] at @s run function pr:player/checkpoint/mark
execute positioned ~8 ~35 ~19 as @a[   tag=pr.target,distance=..3,scores={cubed.checkpoint=1}] at @s run function pr:player/checkpoint/mark
execute positioned ~-23 ~47 ~9 as @a[  tag=pr.target,distance=..3,scores={cubed.checkpoint=2}] at @s run function pr:player/checkpoint/mark
execute positioned ~-16 ~58 ~-14 as @a[tag=pr.target,distance=..3,scores={cubed.checkpoint=3}] at @s run function pr:player/checkpoint/mark
execute positioned ~4 ~69 ~-3 as @a[   tag=pr.target,distance=..3,scores={cubed.checkpoint=4}] at @s run function pr:player/checkpoint/mark

execute positioned ~29 ~25 ~-18 as @a[ tag=pr.target,distance=..3,scores={cubed.checkpoint=0}] run scoreboard players set @s cubed.checkpoint 1
execute positioned ~8 ~35 ~19 as @a[   tag=pr.target,distance=..3,scores={cubed.checkpoint=1}] run scoreboard players set @s cubed.checkpoint 2
execute positioned ~-23 ~47 ~9 as @a[  tag=pr.target,distance=..3,scores={cubed.checkpoint=2}] run scoreboard players set @s cubed.checkpoint 3
execute positioned ~-16 ~58 ~-14 as @a[tag=pr.target,distance=..3,scores={cubed.checkpoint=3}] run scoreboard players set @s cubed.checkpoint 4
execute positioned ~4 ~69 ~-3 as @a[   tag=pr.target,distance=..3,scores={cubed.checkpoint=4}] run scoreboard players set @s cubed.checkpoint 5