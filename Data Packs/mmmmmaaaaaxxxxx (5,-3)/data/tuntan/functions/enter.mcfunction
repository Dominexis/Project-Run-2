# This function runs as and at all players that enter your plot
effect give @s resistance infinite 4 true
effect give @s night_vision infinite 0 true
tellraw @s [{"text": "Complete tunnels for points while avoiding the ","color": "green"},{"text": "red ","color": "red"},{"text": "blocks!","color": "green"}]
tag @s add pr.hide_timer
scoreboard players set @s tuntan_points 0
scoreboard players set @s tuntan_tunnels 0
scoreboard players set @s tuntan_clicked 0