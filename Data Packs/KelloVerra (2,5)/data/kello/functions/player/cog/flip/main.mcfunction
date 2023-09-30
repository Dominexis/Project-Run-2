execute if score @s kello.player.coglected matches 1 run function kello:player/cog/flip/oneof
execute if score @s kello.player.cog.l matches 00001 run function kello:player/cog/flip/branch/both/left
execute if score @s kello.player.cog.r matches 00001 run function kello:player/cog/flip/branch/both/right