execute as @e[tag=lory.deathplane,tag=pr.target] at @s run tp ~ ~.03 ~
execute as @e[tag=lory.water,tag=pr.target] at @s run tp ~ ~.03 ~
execute at @e[tag=lory.deathplane,tag=pr.target] as @a[dx=37,dz=33,dy=-116,tag=lory.playing,tag=pr.target] run function lory:die
scoreboard players add gametime lory 1

execute positioned ~20 ~1 ~-2 as @a[dx=1,dy=1,dz=4] run tag @s remove lory.playing

#close door
execute if score gametime lory matches 200 run clone ~23 ~10 ~-11 ~23 ~16 ~-8 ~20 ~1 ~-2
execute if score gametime lory matches 200 run summon text_display ~20.2115 ~3.5 ~-.5 {Tags:["lory.sign"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,.707f,0f,.707f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"The most time\\nthe current\\nrun could last:"}',background:0}
execute if score gametime lory matches 200 run summon text_display ~20.2115 ~1 ~-.5 {Tags:["lory.countdown"],brightness:{sky:5,block:5},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,.707f,0f,.707f],translation:[0f,0f,0f],scale:[8f,8f,8f]},text:'{"text":"","color":"red"}',background:0}
#put out campfires
execute if score gametime lory matches 2164 run setblock ~7 ~59 ~-3 campfire[lit=false]
execute if score gametime lory matches 2264 run setblock ~16 ~62 ~-10 campfire[lit=false]
#kill people waiting at the door
execute if score gametime lory matches 3866 as @a[tag=lory.playing,tag=pr.target] run function lory:die

scoreboard players remove timeleft lory 1
scoreboard players operation gt_seconds lory = timeleft lory
scoreboard players operation gt_seconds lory /= #20 lory
scoreboard players operation gt_seconds lory %= #60 lory
scoreboard players operation gt_minutes lory = timeleft lory
scoreboard players operation gt_minutes lory /= #1200 lory
data modify entity @e[tag=pr.target,tag=lory.countdown,limit=1] text set value '[{"score":{"name":"gt_minutes","objective":"lory"},"color":"red"},{"text":":"},{"score":{"name":"gt_seconds","objective":"lory"}}]'

execute positioned ~-1.0 ~110 ~-22.5 as @a[dx=2,dy=2,dz=1] positioned ~1.0 ~-110 ~21.0 run tp ~-35 ~1 ~0

execute unless entity @a[tag=lory.playing] run function lory:run_stop