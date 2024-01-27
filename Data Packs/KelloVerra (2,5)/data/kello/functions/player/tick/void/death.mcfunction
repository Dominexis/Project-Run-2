# playsound kello:large_cogwheel_attach_launch player @s ~ ~ ~ 0.825 2 0.825
execute if score @s kello.death.send_delay_time matches 0 run playsound kello:player_died_0 master @s ~ ~ ~ 0.425 1.02 0.425
execute if score @s kello.death.send_delay_time matches 1 run playsound kello:player_died_0 master @s ~ ~ ~ 0.425 2 0.425
# execute if score @s kello.death.send_delay_time matches 1 run title @s times 24 0 0

particle minecraft:scrape ~ ~1 ~ 0.75 0.75 0.75 2 25 force @a[distance=..64,tag=pr.target]
particle minecraft:flash ~ ~1 ~ 0.5 0.5 0.5 1 1 force @a[distance=..64,tag=pr.target]
particle minecraft:totem_of_undying ~ ~2 ~ 0.2 0.5 0.2 0.75 48 force

effect give @s minecraft:resistance infinite 255 true

execute if score @s kello.death.send_delay_time matches 0 run scoreboard players operation @s kello.death.send_delay = #death_send_delay kello.value
execute if score @s kello.death.send_delay_time matches 1 run scoreboard players operation @s kello.death.send_delay = #death_send_delay_short kello.value


# Transition

execute if score @s kello.death.send_delay_time matches 0 run title @s times 40 0 0
execute if score @s kello.death.send_delay_time matches 1 run title @s times 24 0 0
execute if score @s kello.death.send_delay_time matches 0 run title @s title {"text":"a","font":"kello:fullscreen","color":"#011915","type":"text"}
execute if score @s kello.death.send_delay_time matches 1 run title @s title {"text":"a","font":"kello:fullscreen","color":"#021915","type":"text"}

tag @s add kello.death.was_transitioning


# Score reset

execute store result score @s kello.player.y run data get entity @s Pos[1] 10
scoreboard players set #boolean kello.value 0
scoreboard players set @s kello.death.delay 0
execute as @e[type=minecraft:item_display,tag=pr.target,tag=!pr.ignore,tag=aj.cogwheel.root,tag=kello.entity.type.thrown_cogwheel] unless score @s kello.entity.state matches 1 if score @s kello.player.id = #local kello.player.id at @s run function kello:player/tick/void/cog

execute if score @s kello.player.cog.r matches 2 run scoreboard players set @s kello.player.cog.r 0
execute if score @s kello.player.cog.l matches 2 run scoreboard players set @s kello.player.cog.l 0


# Halt player's motion

tp @s @s
tp @s @s
return 1