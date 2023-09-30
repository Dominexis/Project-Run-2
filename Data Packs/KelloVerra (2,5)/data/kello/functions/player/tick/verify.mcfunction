# Init new players

#execute unless score @s kello.player.id = @s kello.player.id run function kello:player/setup/main






# Reference

scoreboard players operation #local kello.player.id = @s kello.player.id
#scoreboard players operation #local kello.aim.id = @s kello.aim.id
#scoreboard players set @s kello.aim.id 0




# Area detection

execute align xyz run function kello:player/tick/area/verify




# Tick

execute at @s run function kello:player/tick/main




# Instantiate interaction

#execute if entity @s[tag=!kello.debug.no_interaction] run function kello:player/tick/check_interaction