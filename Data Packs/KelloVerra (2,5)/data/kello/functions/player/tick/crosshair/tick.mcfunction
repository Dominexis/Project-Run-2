execute if entity @s[tag=kello.death.was_transitioning] run title @s times 0 20 0

execute if score @s kello.player.cog.l matches -1 run function kello:player/tick/crosshair/left/-1
execute if score @s kello.player.cog.l matches 0 run function kello:player/tick/crosshair/left/0
execute if score @s kello.player.cog.l matches 1 run function kello:player/tick/crosshair/left/1
execute if score @s kello.player.cog.l matches 2 run function kello:player/tick/crosshair/left/2
execute if score @s kello.player.cog.l matches 3 run function kello:player/tick/crosshair/left/3
return 1