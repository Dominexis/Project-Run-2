# Compute placement

function pr:leaderboard/data/get

execute store result score #time_1 pr.value run data get storage pr:data tag.leaderboard.p1.time
execute store result score #time_2 pr.value run data get storage pr:data tag.leaderboard.p2.time
execute store result score #time_3 pr.value run data get storage pr:data tag.leaderboard.p3.time
execute store result score #time_4 pr.value run data get storage pr:data tag.leaderboard.p4.time
execute store result score #time_5 pr.value run data get storage pr:data tag.leaderboard.p5.time

scoreboard players set #placement pr.value 6
execute if score #player_time pr.value < #time_5 pr.value run scoreboard players set #placement pr.value 5
execute if score #player_time pr.value < #time_4 pr.value run scoreboard players set #placement pr.value 4
execute if score #player_time pr.value < #time_3 pr.value run scoreboard players set #placement pr.value 3
execute if score #player_time pr.value < #time_2 pr.value run scoreboard players set #placement pr.value 2
execute if score #player_time pr.value < #time_1 pr.value run scoreboard players set #placement pr.value 1







# Shuffle around names and times

execute if score #placement pr.value matches ..4 run data modify storage pr:data tag.leaderboard.p5 set from storage pr:data tag.leaderboard.p4
execute if score #placement pr.value matches ..3 run data modify storage pr:data tag.leaderboard.p4 set from storage pr:data tag.leaderboard.p3
execute if score #placement pr.value matches ..2 run data modify storage pr:data tag.leaderboard.p3 set from storage pr:data tag.leaderboard.p2
execute if score #placement pr.value matches ..1 run data modify storage pr:data tag.leaderboard.p2 set from storage pr:data tag.leaderboard.p1

data modify storage pr:data tag.placement set value {}
execute on passengers if entity @s[type=minecraft:text_display,tag=pr.leaderboard.resolver] run function help:cee67462f3d7f835584edc9b3253da92d62359c0340aeb2fecc1288ee997b2a4
execute on passengers if entity @s[type=minecraft:text_display,tag=pr.leaderboard.resolver] run data modify storage pr:data tag.placement.text set from entity @s text
execute store result storage pr:data tag.placement.time int 1 run scoreboard players get #player_time pr.value

execute if score #placement pr.value matches 1 run data modify storage pr:data tag.leaderboard.p1 set from storage pr:data tag.placement
execute if score #placement pr.value matches 2 run data modify storage pr:data tag.leaderboard.p2 set from storage pr:data tag.placement
execute if score #placement pr.value matches 3 run data modify storage pr:data tag.leaderboard.p3 set from storage pr:data tag.placement
execute if score #placement pr.value matches 4 run data modify storage pr:data tag.leaderboard.p4 set from storage pr:data tag.placement
execute if score #placement pr.value matches 5 run data modify storage pr:data tag.leaderboard.p5 set from storage pr:data tag.placement







# Apply text

function pr:leaderboard/name
data modify storage pr:data tag.leaderboard_line_1 set value '["",{"text":"1st","color":"#ffb200","bold":true},{"text":" - ","color":"gray"},{"nbt":"tag.leaderboard.p1.text","storage":"pr:data","interpret":true}]'
data modify storage pr:data tag.leaderboard_line_2 set value '["",{"text":"2nd","color":"#dc961c","bold":true},{"text":" - ","color":"gray"},{"nbt":"tag.leaderboard.p2.text","storage":"pr:data","interpret":true}]'
data modify storage pr:data tag.leaderboard_line_3 set value '["",{"text":"3rd","color":"#c87b1f","bold":true},{"text":" - ","color":"gray"},{"nbt":"tag.leaderboard.p3.text","storage":"pr:data","interpret":true}]'
data modify storage pr:data tag.leaderboard_line_4 set value '["",{"text":"4th","color":"#b35e1f","bold":true},{"text":" - ","color":"gray"},{"nbt":"tag.leaderboard.p4.text","storage":"pr:data","interpret":true}]'
data modify storage pr:data tag.leaderboard_line_5 set value '["",{"text":"5th","color":"#954c1c","bold":true},{"text":" - ","color":"gray"},{"nbt":"tag.leaderboard.p5.text","storage":"pr:data","interpret":true}]'
data modify entity @s text set value '["",{"nbt":"tag.leaderboard_name","storage":"pr:data","interpret":true,"color":"gold","bold":true,"source":"storage","type":"nbt"},{"text":"\\n","type":"text"},{"nbt":"tag.leaderboard_line_1","storage":"pr:data","interpret":true,"source":"storage","type":"nbt"},{"text":"\\n","type":"text"},{"nbt":"tag.leaderboard_line_2","storage":"pr:data","interpret":true,"source":"storage","type":"nbt"},{"text":"\\n","type":"text"},{"nbt":"tag.leaderboard_line_3","storage":"pr:data","interpret":true,"source":"storage","type":"nbt"},{"text":"\\n","type":"text"},{"nbt":"tag.leaderboard_line_4","storage":"pr:data","interpret":true,"source":"storage","type":"nbt"},{"text":"\\n","type":"text"},{"nbt":"tag.leaderboard_line_5","storage":"pr:data","interpret":true,"source":"storage","type":"nbt"}]'

data modify storage pr:data tag.text set from entity @s text
execute on passengers if entity @s[type=minecraft:text_display,tag=pr.leaderboard.backside] run data modify entity @s text set from storage pr:data tag.text







# Hide resolver text

execute on passengers if entity @s[type=minecraft:text_display,tag=pr.leaderboard.resolver] run data merge entity @s {text_opacity:0b,background:0,text:'{"type":"text","text":""}'}







# Write data back to global leaderboard

function pr:leaderboard/data/set