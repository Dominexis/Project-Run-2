# Consistent player enter / relog setup

scoreboard players set @s kello.player.void_y -64
tag @s add pr.hide_timer
execute if score @s kello.player.id = @s kello.player.id run function kello:player/setup/remove


function kello:player/setup/main
clear @s diamond_horse_armor


# TODO : DEBUG
# gamemode creative