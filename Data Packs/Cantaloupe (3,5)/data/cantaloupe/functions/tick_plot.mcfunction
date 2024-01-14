scoreboard players add @e[type=minecraft:marker,tag=pr.target,tag=FireLeft] CantaloupeTimer 1
scoreboard players add @e[type=minecraft:marker,tag=pr.target,tag=FireRight] CantaloupeTimer 1
#scoreboard players add platform CantaloupeTimer 1

execute as @e[type=minecraft:marker,tag=FireLeft,tag=pr.target,scores={CantaloupeTimer=15}] at @s run summon minecraft:arrow ~ ~0.5 ~ {Motion:[-1.5d,0.0d,0.0d]}
execute as @e[type=minecraft:marker,tag=FireRight,tag=pr.target,scores={CantaloupeTimer=25}] at @s run summon minecraft:arrow ~ ~0.5 ~ {Motion:[-1.5d,0.0d,0.0d]}


#execute if score platform CantaloupeTimer matches 24 run clone ~10 ~-6 ~-33 ~16 ~-2 ~-29 ~-3 ~-6 ~1
#execute if score platform CantaloupeTimer matches 48 run clone ~10 ~-6 ~-25 ~16 ~-2 ~-21 ~-3 ~-6 ~1
#execute if score platform CantaloupeTimer matches 72 run clone ~20 ~-6 ~-33 ~26 ~-2 ~-29 ~-3 ~-6 ~1
#execute if score platform CantaloupeTimer matches 96 run clone ~20 ~-6 ~-25 ~26 ~-2 ~-21 ~-3 ~-6 ~1
#execute if score platform CantaloupeTimer matches 120 run clone ~10 ~-6 ~-17 ~16 ~-2 ~-13 ~-3 ~-6 ~1
#execute if score platform CantaloupeTimer matches 144 run clone ~20 ~-6 ~-17 ~26 ~-2 ~-13 ~-3 ~-6 ~1
#execute if score platform CantaloupeTimer matches 192 run clone ~10 ~-6 ~-17 ~16 ~-2 ~-13 ~-3 ~-6 ~1
#execute if score platform CantaloupeTimer matches 218 run clone ~20 ~-6 ~-25 ~26 ~-2 ~-21 ~-3 ~-6 ~1
#execute if score platform CantaloupeTimer matches 242 run clone ~20 ~-6 ~-33 ~26 ~-2 ~-29 ~-3 ~-6 ~1
#execute if score platform CantaloupeTimer matches 266 run clone ~10 ~-6 ~-25 ~16 ~-2 ~-21 ~-3 ~-6 ~1

execute as @e[type=minecraft:marker,tag=pr.target] if score @s CantaloupeTimer matches 40.. run kill @e[type=minecraft:arrow,tag=pr.target]
execute as @e[type=minecraft:marker,tag=pr.target] if score @s CantaloupeTimer matches 40.. run scoreboard players set @s CantaloupeTimer 0

execute as @e[type=minecraft:text_display,tag=3.5.light_text] at @s if entity @a[distance=..5,tag=pr.target,sort=nearest,limit=1] run data modify entity @s text_opacity set value 24
execute as @e[type=minecraft:text_display,tag=3.5.light_text] at @s if entity @a[distance=..5,tag=pr.target,sort=nearest,limit=1] run particle minecraft:dust_color_transition 1 1 1 1 0 0 0 ~ ~-0.25 ~-1 0.25 0 0.25 0 20
execute as @e[type=minecraft:text_display,tag=3.5.light_text] at @s unless entity @a[distance=..5,tag=pr.target,sort=nearest,limit=1] run data modify entity @s text_opacity set value 24

execute as @a[tag=pr.target,predicate=cantaloupe:stepping_on_tinted_glass] run damage @s 100 minecraft:out_of_world

execute positioned ~ ~1 ~39 as @a[distance=..5,tag=pr.target] run function pr:player/finish
return 1