scoreboard players add cp frostcobra.count 1
summon minecraft:text_display ~ ~0.25 ~ {text:'{"text":"Checkpoint","color":"white"}',Tags:["pr.target","frostcobra.checkpoint","frostcobra.new"],billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text_opacity:200,view_range:0.15f}
scoreboard players operation @e[tag=pr.target,tag=frostcobra.new] frostcobra.cpId = cp frostcobra.count
tag @e[tag=pr.target,tag=frostcobra.new] remove frostcobra.new
