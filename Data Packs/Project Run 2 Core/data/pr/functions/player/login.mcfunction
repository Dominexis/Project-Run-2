# Sync ticks

scoreboard players operation @s pr.ticks = #global pr.ticks







# Get UUID

data modify storage pr:data tag.UUID set from entity @s UUID

execute store result score @s pr.uuid_0 run data get storage pr:data tag.UUID[0]
execute store result score @s pr.uuid_1 run data get storage pr:data tag.UUID[1]
execute store result score @s pr.uuid_2 run data get storage pr:data tag.UUID[2]
execute store result score @s pr.uuid_3 run data get storage pr:data tag.UUID[3]







# Send to checkpoint

tag @s[team=!pr.spectator] remove pr.temp_checkpoint
execute if entity @s[team=!pr.spectator] run function pr:player/checkpoint/send_to
scoreboard players set @s pr.plot_previous -1







# Manage player

function pr:player/title

team join pr.player @s[team=!pr.spectator]
gamemode adventure @s[team=!pr.spectator]

tellraw @s [{"text":"Welcome to ","color":"gold","type":"text"},{"text":"Project ","color":"white","type":"text"},{"text":"Run ","color":"green","type":"text"},{"text":"2","color":"yellow","type":"text"}]
tellraw @s[team=!pr.spectator] [{"text":"Use ","color":"gray","type":"text"},{"text":"/trigger spectate","color":"white","type":"text"},{"text":" to spectate the map","color":"gray","type":"text"}]
execute unless score @s pr.plot = #spawn_plot pr.value run tellraw @s[team=!pr.spectator] [{"text":"Use ","color":"gray","type":"text"},{"text":"/trigger lobby","color":"white","type":"text"},{"text":" to return to the lobby","color":"gray","type":"text"}]
execute unless score @s pr.plot = #spawn_plot pr.value run tellraw @s[team=!pr.spectator] [{"text":"Use ","color":"gray","type":"text"},{"text":"/trigger checkpoint","color":"white","type":"text"},{"text":" to go to the previous checkpoint","color":"gray","type":"text"}]
tellraw @s[team=pr.spectator] [{"text":"Use ","color":"gray","type":"text"},{"text":"/trigger lobby","color":"white","type":"text"},{"text":" to return to the lobby","color":"gray","type":"text"}]
return 1