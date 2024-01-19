# Compute placement

scoreboard players operation #plot pr.value = @s pr.plot

function pr:leaderboard/data/get







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