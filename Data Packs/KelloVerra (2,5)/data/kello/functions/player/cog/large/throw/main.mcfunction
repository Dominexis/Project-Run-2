# Reference

scoreboard players operation #local kello.player.id = @s kello.player.id
scoreboard players set #casterminate kello.value 0
tag @s add kello.player.target

scoreboard players set #boolean kello.value 0

execute if entity @e[type=minecraft:item_display,distance=..1.875,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.launchpad,scores={kello.entity.state=..1}] run scoreboard players set #boolean kello.value 1
execute if entity @e[type=minecraft:item_display,distance=..1.25,tag=pr.target,tag=!pr.ignore,tag=kello.decal,tag=kello.empty,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.large] run scoreboard players set #boolean kello.value 1

execute if score #boolean kello.value matches 0 unless block ^ ^ ^.5 #kello:generic/cogwheel_passable run particle minecraft:block_marker minecraft:barrier ^ ^ ^.25 0 0 0 1 1 force @p[tag=pr.target,tag=kello.player.target]
execute if score #boolean kello.value matches 0 unless block ^ ^ ^.5 #kello:generic/cogwheel_passable run tag @s remove kello.player.target
execute if score #boolean kello.value matches 0 unless block ^ ^ ^.5 #kello:generic/cogwheel_passable run return 0

execute if score #boolean kello.value matches 0 unless block ^ ^ ^1 #kello:generic/cogwheel_passable run particle minecraft:block_marker minecraft:barrier ^ ^ ^.5 0 0 0 1 1 force @p[tag=pr.target,tag=kello.player.target]
execute if score #boolean kello.value matches 0 unless block ^ ^ ^1 #kello:generic/cogwheel_passable run tag @s remove kello.player.target
execute if score #boolean kello.value matches 0 unless block ^ ^ ^1 #kello:generic/cogwheel_passable run return 0

execute positioned ^ ^ ^-1 if block ~ ~ ~ #kello:generic/cogwheel_passable run function kello:entity/thrown/large_cog/spawn/main
# scoreboard players set #set kello.aim.id 0
tag @s remove kello.player.target

# scoreboard players operation @s kello.player.l_cogwheel_timeout = #cogwheel_timeout_limit kello.value



# Change state

clear @s minecraft:diamond_horse_armor{large_cog:1b}
scoreboard players set #crosshair_state kello.value 0



# SFX

function kello:generic/sfx/cog_throw/large
return 1