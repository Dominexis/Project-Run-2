# Consistent player enter / relog setup

# execute if score @s kello.checkpoint.id = @s kello.checkpoint.id run function kello:tick/level/emergency_deload

scoreboard players set @s kello.death.delay 0
scoreboard players set @s kello.death.send_delay 0
scoreboard players set @s kello.death.send_delay_time 0
scoreboard players set @s kello.player.void_y -2

tag @s add pr.hide_timer
execute if score @s kello.player.id = @s kello.player.id run function kello:player/setup/remove
scoreboard players set @s kello.player.checkpoint.id -1


function kello:player/setup/main
clear @s minecraft:diamond_horse_armor
return 1