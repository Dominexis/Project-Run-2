scoreboard players add portal frostcobra.count 1
summon minecraft:text_display ~ ~ ~ {text:'{"text":"?","bold":true,"color":"light_purple","type":"text"}',Tags:["pr.target","frostcobra.portalIn","frostcobra.new"],billboard:"center",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[5.0f,5.0f,5.0f]},background:0}
scoreboard players operation @e[tag=pr.target,tag=frostcobra.new] frostcobra.tpScore = temp frostcobra.tpScore
scoreboard players operation @e[tag=pr.target,tag=frostcobra.new] frostcobra.portals = portal frostcobra.count
tag @e[tag=pr.target,tag=frostcobra.new] remove frostcobra.new

return 1