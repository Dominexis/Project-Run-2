# Yeet to temp checkpoint
playsound kello:large_cogwheel_attach_launch player @s ~ ~ ~ 0.825 2 0.825

particle minecraft:scrape ~ ~1 ~ 0.75 0.75 0.75 2 25 force @a[tag=pr.target,distance=..64]
particle minecraft:flash ~ ~1 ~ 0.5 0.5 0.5 1 1 force @a[tag=pr.target,distance=..64]
particle minecraft:totem_of_undying ~ ~2 ~ 0.2 0.5 0.2 0.75 48 force

effect give @s minecraft:resistance infinite 255 true

function pr:player/checkpoint/send_to

execute store result score @s kello.player.y run data get entity @s Pos[1] 10
scoreboard players set #boolean kello.value 0
scoreboard players set @s kello.death.delay 0
execute as @e[type=item_display,tag=pr.target,tag=!pr.ignore,tag=aj.cogwheel.root,tag=kello.entity.type.thrown_cogwheel] unless score @s kello.entity.state matches 1 if score @s kello.player.id = #local kello.player.id at @s run function kello:player/tick/void/cog

execute if score @s kello.player.cog.r matches 2 run scoreboard players set @s kello.player.cog.r 0
execute if score @s kello.player.cog.l matches 2 run scoreboard players set @s kello.player.cog.l 0


# Halt player's motion

tp @s @s
tp @s @s