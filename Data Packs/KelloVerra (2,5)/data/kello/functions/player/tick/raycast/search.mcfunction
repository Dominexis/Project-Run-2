scoreboard players remove #castsearch kello.value 1

execute if score @s kello.player.cog.r matches 1 as @e[type=text_display,distance=..1.15,tag=kello.entity.type.aimdicator,tag=kello.entity.type.small,sort=nearest,limit=1] run function kello:player/tick/raycast/apply_r

execute if score @s kello.player.cog.l matches 1 as @e[type=text_display,distance=..1.15,tag=kello.entity.type.aimdicator,tag=kello.entity.type.large,sort=nearest,limit=1] run function kello:player/tick/raycast/apply_l
#execute if score #casterminate kello.value matches 1 run scoreboard players operation @s kello.aim.id = #local kello.aim.id
execute if score #casterminate kello.value matches 0 if score #castsearch kello.value matches 1.. positioned ^ ^ ^.5 run function kello:player/tick/raycast/search