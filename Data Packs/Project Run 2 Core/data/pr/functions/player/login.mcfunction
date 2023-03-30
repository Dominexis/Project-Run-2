# Sync ticks

scoreboard players operation @s pr.ticks = #global pr.ticks







# Send title

function pr:player/title







# Send to checkpoint

function pr:player/checkpoint/send_to







# Manage player

team join pr.player @s
#gamemode adventure @s

tellraw @s [{"text":"Welcome to ","color":"gold"},{"text":"Project ","color":"white"},{"text":"Run ","color":"green"},{"text":"2","color":"yellow"}]
tellraw @s [{"text":"Use ","color":"gray"},{"text":"/trigger spectate","color":"white"},{"text":" to spectate the map","color":"gray"}]
execute unless score @s pr.plot = #spawn_plot pr.value run tellraw @s [{"text":"Use ","color":"gray"},{"text":"/trigger lobby","color":"white"},{"text":" to return to the lobby","color":"gray"}]
execute unless score @s pr.plot = #spawn_plot pr.value run tellraw @s [{"text":"Use ","color":"gray"},{"text":"/trigger checkpoint","color":"white"},{"text":" to go to the previous checkpoint","color":"gray"}]