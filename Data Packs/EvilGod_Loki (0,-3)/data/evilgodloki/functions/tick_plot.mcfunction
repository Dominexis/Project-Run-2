# This function will run every tick while players are in your plot on the center block at Y=0



execute as @a[tag=!lokicave,tag=pr.target] at @s if block ~ ~-2 ~ orange_wool run playsound ambient.cave player @s ~ ~ ~ 1 1 1
execute as @a[tag=!lokicave,tag=pr.target] at @s if block ~ ~-2 ~ orange_wool run tag @s add lokicave

execute as @a[tag=pr.target] at @s if block ~ ~-2 ~ black_wool run tp @s ~ 1 ~26 0 0

execute as @a[tag=!lokidoor,tag=pr.target] at @s if block ~ ~-1 ~ gray_wool run playsound block.iron_door.close player @s ~ ~ ~ 1 1 1
execute as @a[tag=!lokidoor,tag=pr.target] at @s if block ~ ~-1 ~ gray_wool run tag @s add lokidoor

execute if score tick lokicode matches 1.. run scoreboard players remove tick lokicode 1
execute if score tick lokicode matches 0 run kill @e[tag=lokierror,tag=pr.target]

execute as @e[tag=lokik,tag=pr.target] if score @s lokicode matches 1 at @s run tp @s ^ ^ ^0.05
execute as @e[tag=lokik,tag=pr.target] if score @s lokicode matches 1.. run scoreboard players remove @s lokicode 1


