# This function runs as and at all players that enter your plot
effect give @s minecraft:resistance infinite 4 true
effect give @s minecraft:night_vision infinite 0 true
tellraw @s [{"text":"Complete tunnels for points while avoiding the ","color":"green","type":"text"},{"text":"red ","color":"red","type":"text"},{"text":"blocks!","color":"green","type":"text"}]
tag @s add pr.hide_timer
scoreboard players set @s tuntan_points 0
scoreboard players set @s tuntan_tunnels 0
scoreboard players set @s tuntan_clicked 0
return 1