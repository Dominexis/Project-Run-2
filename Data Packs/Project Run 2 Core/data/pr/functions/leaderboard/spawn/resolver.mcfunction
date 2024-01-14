# Set NBT

data merge entity @s {text_opacity:0b,background:0,text:'{"type":"text","text":""}'}







# Assign tags

tag @s add pr.leaderboard
tag @s add pr.leaderboard.resolver







# Ride parent entity

ride @s mount @e[type=minecraft:text_display,distance=..2,tag=pr.leaderboard.root,tag=pr.leaderboard.target,limit=1]
return 1