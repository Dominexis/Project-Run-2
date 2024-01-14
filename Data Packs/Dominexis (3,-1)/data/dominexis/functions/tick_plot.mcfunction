execute as @a[tag=pr.target] at @s if block ~-0.3 ~-0.1 ~-0.3 #dominexis:kill_blocks run kill @s
execute as @a[tag=pr.target] at @s if block ~-0.3 ~-0.1 ~00.3 #dominexis:kill_blocks run kill @s
execute as @a[tag=pr.target] at @s if block ~00.3 ~-0.1 ~-0.3 #dominexis:kill_blocks run kill @s
execute as @a[tag=pr.target] at @s if block ~00.3 ~-0.1 ~00.3 #dominexis:kill_blocks run kill @s
execute as @a[tag=pr.target,tag=!dominexis.yellow_safe] at @s if block ~ ~-0.1 ~ minecraft:yellow_terracotta run tellraw @s {"text":"Yellow is unsafe! Pass through the yellow ring first!","color":"yellow","type":"text"}
execute as @a[tag=pr.target,tag=!dominexis.yellow_safe] at @s if block ~ ~-0.1 ~ minecraft:yellow_terracotta run kill @s
execute as @a[tag=pr.target,tag=!dominexis.red_safe] at @s if block ~ ~-0.1 ~ minecraft:red_terracotta run tellraw @s {"text":"Red is unsafe! Pass through the red ring first!","color":"red","type":"text"}
execute as @a[tag=pr.target,tag=!dominexis.red_safe] at @s if block ~ ~-0.1 ~ minecraft:red_terracotta run kill @s

execute positioned ~-7 ~48 ~-1 as @a[dx=0,dy=6,dz=6,tag=pr.target,tag=!dominexis.yellow_safe] positioned ~ ~3 ~3 run function dominexis:yellow_safe
execute positioned ~19 ~34 ~-33 as @a[dx=0,dy=6,dz=6,tag=pr.target,tag=!dominexis.red_safe] positioned ~ ~3 ~3 run function dominexis:red_safe
execute positioned ~13 ~34 ~28 as @a[dx=0,dy=6,dz=6,tag=pr.target,tag=!dominexis.red_safe] positioned ~ ~3 ~3 run function dominexis:red_safe

effect give @a[tag=pr.target] minecraft:jump_boost infinite 4 true
return 1