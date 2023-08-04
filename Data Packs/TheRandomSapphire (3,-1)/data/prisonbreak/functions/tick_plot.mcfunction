# This function will run every tick while players are in your plot on the center block at Y=0
execute positioned ~-35 ~1 ~2 if entity @a[tag=pr.target,dx=-3.5,dz=-4,tag=!prisonbreak.fallen] run function prisonbreak:fall
execute if score replacefloor prisonbreak.time matches 1.. run scoreboard players remove replacefloor prisonbreak.time 1
execute if score replacefloor prisonbreak.time matches 1 positioned ~-35 ~1 ~2 run fill ~ ~-1 ~ ~-4 ~-1 ~-4 stone_bricks
execute as @a[tag=pr.target] if score @s prisonbreak.time matches 1.. run scoreboard players remove @s prisonbreak.time 1
execute as @a[tag=pr.target] if score @s prisonbreak.time matches 1 positioned ~-35 ~1 ~2 run effect give @s slow_falling 1 0 true