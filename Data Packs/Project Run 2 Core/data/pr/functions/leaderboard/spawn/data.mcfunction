# Set NBT

data merge entity @s {data:{leaderboard:{}}}
data modify entity @s data.leaderboard.p1 set value {time:2147483647,text:'[{"text":"---","color":"white"},{"text":" - ","color":"gray"},{"text":"--","color":"white","bold":true},{"text":":","color":"gray"},{"text":"--","color":"white","bold":true},{"text":".","color":"gray"},{"text":"---","color":"white","bold":true}]'}
data modify entity @s data.leaderboard.p2 set value {time:2147483647,text:'[{"text":"---","color":"white"},{"text":" - ","color":"gray"},{"text":"--","color":"white","bold":true},{"text":":","color":"gray"},{"text":"--","color":"white","bold":true},{"text":".","color":"gray"},{"text":"---","color":"white","bold":true}]'}
data modify entity @s data.leaderboard.p3 set value {time:2147483647,text:'[{"text":"---","color":"white"},{"text":" - ","color":"gray"},{"text":"--","color":"white","bold":true},{"text":":","color":"gray"},{"text":"--","color":"white","bold":true},{"text":".","color":"gray"},{"text":"---","color":"white","bold":true}]'}
data modify entity @s data.leaderboard.p4 set value {time:2147483647,text:'[{"text":"---","color":"white"},{"text":" - ","color":"gray"},{"text":"--","color":"white","bold":true},{"text":":","color":"gray"},{"text":"--","color":"white","bold":true},{"text":".","color":"gray"},{"text":"---","color":"white","bold":true}]'}
data modify entity @s data.leaderboard.p5 set value {time:2147483647,text:'[{"text":"---","color":"white"},{"text":" - ","color":"gray"},{"text":"--","color":"white","bold":true},{"text":":","color":"gray"},{"text":"--","color":"white","bold":true},{"text":".","color":"gray"},{"text":"---","color":"white","bold":true}]'}







# Assign tags

tag @s add pr.leaderboard
tag @s add pr.leaderboard.data







# Ride parent entity

ride @s mount @e[type=minecraft:text_display,distance=..2,tag=pr.leaderboard.root,tag=pr.leaderboard.target,limit=1]
return 1