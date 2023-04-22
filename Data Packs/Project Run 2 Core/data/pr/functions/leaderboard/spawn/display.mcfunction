# Assign tags and scores

tag @s add pr.leaderboard
tag @s add pr.leaderboard.root
tag @s add pr.leaderboard.target

scoreboard players operation @s pr.plot = #plot pr.value

data merge entity @s {background:-2147483648}







# Assign default name

function pr:leaderboard/name
data modify storage pr:data tag.leaderboard_line_1 set value '["",{"text":"1st","color":"#ffb200","bold":true},{"text":" - ","color":"gray"},{"text":"---","color":"white"},{"text":" - ","color":"gray"},{"text":"--","color":"white","bold":true},{"text":":","color":"gray"},{"text":"--","color":"white","bold":true},{"text":".","color":"gray"},{"text":"---","color":"white","bold":true}]'
data modify storage pr:data tag.leaderboard_line_2 set value '["",{"text":"2nd","color":"#dc961c","bold":true},{"text":" - ","color":"gray"},{"text":"---","color":"white"},{"text":" - ","color":"gray"},{"text":"--","color":"white","bold":true},{"text":":","color":"gray"},{"text":"--","color":"white","bold":true},{"text":".","color":"gray"},{"text":"---","color":"white","bold":true}]'
data modify storage pr:data tag.leaderboard_line_3 set value '["",{"text":"3rd","color":"#c87b1f","bold":true},{"text":" - ","color":"gray"},{"text":"---","color":"white"},{"text":" - ","color":"gray"},{"text":"--","color":"white","bold":true},{"text":":","color":"gray"},{"text":"--","color":"white","bold":true},{"text":".","color":"gray"},{"text":"---","color":"white","bold":true}]'
data modify storage pr:data tag.leaderboard_line_4 set value '["",{"text":"4th","color":"#b35e1f","bold":true},{"text":" - ","color":"gray"},{"text":"---","color":"white"},{"text":" - ","color":"gray"},{"text":"--","color":"white","bold":true},{"text":":","color":"gray"},{"text":"--","color":"white","bold":true},{"text":".","color":"gray"},{"text":"---","color":"white","bold":true}]'
data modify storage pr:data tag.leaderboard_line_5 set value '["",{"text":"5th","color":"#954c1c","bold":true},{"text":" - ","color":"gray"},{"text":"---","color":"white"},{"text":" - ","color":"gray"},{"text":"--","color":"white","bold":true},{"text":":","color":"gray"},{"text":"--","color":"white","bold":true},{"text":".","color":"gray"},{"text":"---","color":"white","bold":true}]'
data modify entity @s text set value '["",{"nbt":"tag.leaderboard_name","storage":"pr:data","interpret":true,"color":"gold","bold":true},{"text":"\\n"},{"nbt":"tag.leaderboard_line_1","storage":"pr:data","interpret":true},{"text":"\\n"},{"nbt":"tag.leaderboard_line_2","storage":"pr:data","interpret":true},{"text":"\\n"},{"nbt":"tag.leaderboard_line_3","storage":"pr:data","interpret":true},{"text":"\\n"},{"nbt":"tag.leaderboard_line_4","storage":"pr:data","interpret":true},{"text":"\\n"},{"nbt":"tag.leaderboard_line_5","storage":"pr:data","interpret":true}]'







# Align to center

execute at @s facing -56 ~ 40 run tp @s ~ ~ ~ ~ ~







# Spawn other entities

data modify storage pr:data tag.text set from entity @s text
execute at @s summon text_display run function pr:leaderboard/spawn/backside
execute summon text_display run function pr:leaderboard/spawn/resolver
execute summon marker run function pr:leaderboard/spawn/data







# Remove target tag

tag @s remove pr.leaderboard.target