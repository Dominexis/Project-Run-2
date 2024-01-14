# Revoke advancement

advancement revoke @s only pr:launch/pre







# Manage gamemode

scoreboard players set @s[gamemode=survival] pr.gamemode 0
scoreboard players set @s[gamemode=creative] pr.gamemode 1
scoreboard players set @s[gamemode=adventure] pr.gamemode 2
scoreboard players set @s[gamemode=spectator] pr.gamemode 3

gamemode creative @s

tag @s add pr.player.launch.target
execute as @a[distance=..10,tag=!pr.player.launch.target] run function pr:player/launch/pre/gamemode
tag @s remove pr.player.launch.target







# Manage entities

execute as @e[type=#pr:family/mob,distance=..10] run function pr:player/launch/pre/entity







# Teleport down all the creepers

scoreboard players operation #local pr.id = @s pr.id
execute positioned ~ ~8192 ~ as @e[type=minecraft:creeper,distance=..4,tag=pr.launch] if score @s pr.id = #local pr.id at @s run tp @s ~ ~-8192 ~
return 1