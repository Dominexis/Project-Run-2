# Compute time values

function pr:player/time/compute

tellraw @s ["",{"text":"You finished in ","color":"green"},{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":".","color":"gray"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true}]







# Manage placement on leaderboards

tag @s add pr.leaderboard_placement
scoreboard players operation #player_time pr.value = @s pr.time

scoreboard players operation #plot pr.value = #spawn_plot pr.value
function pr:leaderboard/placement/main
scoreboard players operation #plot pr.value = @s pr.plot
function pr:leaderboard/placement/main

tag @s remove pr.leaderboard_placement







# Send to lobby

gamemode adventure @s

function pr:plot/advancement

function pr:player/checkpoint/lobby
function pr:player/checkpoint/send_to

execute at @s run summon firework_rocket ~ ~ ~ {Life:0,LifeTime:25,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Colors:[I;200],Type:2b}],Flight:1b}}}}