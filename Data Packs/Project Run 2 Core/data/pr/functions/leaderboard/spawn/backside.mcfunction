# Set NBT

data modify entity @s text set from storage pr:data tag.text
data merge entity @s {background:-2147483648}







# Assign tags

tag @s add pr.leaderboard
tag @s add pr.leaderboard.backside







# Rotate

tp @s ~ ~ ~ ~180 ~







# Ride parent entity

ride @s mount @e[type=text_display,distance=..2,tag=pr.leaderboard.root,tag=pr.leaderboard.target,limit=1]