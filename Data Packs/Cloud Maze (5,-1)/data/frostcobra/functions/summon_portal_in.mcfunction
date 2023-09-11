scoreboard players add portal frostcobra.count 1
summon minecraft:text_display ~ ~ ~ {text:'{"text":"?","bold":"true","color":"light_purple"}',Tags:["pr.target","frostcobra.portalIn","frostcobra.new"],billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,5f]},background:0}
scoreboard players operation @e[tag=pr.target,tag=frostcobra.new] frostcobra.tpScore = temp frostcobra.tpScore
scoreboard players operation @e[tag=pr.target,tag=frostcobra.new] frostcobra.portals = portal frostcobra.count
tag @e[tag=pr.target,tag=frostcobra.new] remove frostcobra.new
