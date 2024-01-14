summon minecraft:text_display ~ ~ ~ {text:'{"text":"\\u25c6","color":"gold","type":"text"}',Tags:["pr.target","frostcobra.portalOut","frostcobra.new"],billboard:"center",transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[5.0f,5.0f,5.0f]},background:0}
scoreboard players operation @e[tag=pr.target,tag=frostcobra.new] frostcobra.portals = portal frostcobra.count
tag @e[tag=pr.target,tag=frostcobra.new] remove frostcobra.new

return 1