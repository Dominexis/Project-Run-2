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
function help:f04b668dc3a1f5f927d32d7d1741baee61b3915eeac0c278fb14ea9f143ded45







# Align to center

execute at @s facing -56 ~ 40 run tp @s ~ ~ ~ ~ ~







# Spawn other entities

data modify storage pr:data tag.text set from entity @s text
execute at @s summon minecraft:text_display run function pr:leaderboard/spawn/backside
execute summon minecraft:text_display run function pr:leaderboard/spawn/resolver
execute summon minecraft:marker run function pr:leaderboard/spawn/data







# Remove target tag

tag @s remove pr.leaderboard.target
return 1