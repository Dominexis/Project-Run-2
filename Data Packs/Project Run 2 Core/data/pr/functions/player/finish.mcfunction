# Compute time values

function pr:player/time/compute

function help:cbc374f7d3ba21e47bafe01a480e5cabff9f6ce2fd02a22542592a933f0eb060







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

execute at @s run summon minecraft:firework_rocket ~ ~ ~ {Life:0,LifeTime:25,FireworksItem:{id:"minecraft:firework_rocket",tag:{Fireworks:{Explosions:[{Colors:[I;200],Type:2b}],Flight:1b}},Count:1b}}
return 1