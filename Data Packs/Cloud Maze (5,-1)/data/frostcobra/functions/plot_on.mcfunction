scoreboard objectives add frostcobra.fallDistance dummy
scoreboard objectives add frostcobra.constants dummy
scoreboard objectives add frostcobra.portals dummy
scoreboard objectives add frostcobra.tp dummy
scoreboard objectives add frostcobra.tp2 dummy
scoreboard objectives add frostcobra.cpId dummy
scoreboard objectives add frostcobra.lastCp dummy
scoreboard objectives add frostcobra.lastCp2 dummy
scoreboard objectives add frostcobra.tpScore dummy
scoreboard objectives add frostcobra.count dummy

scoreboard players set MAX_FALL frostcobra.constants 12
scoreboard players set NUM-2 frostcobra.constants -2
scoreboard players set NUM-1 frostcobra.constants -1
scoreboard players set NUM0 frostcobra.constants 0
scoreboard players set NUM1 frostcobra.constants 1

# Summon welcome text

summon minecraft:text_display ~-36 ~3.2 ~0 {text:'{"text":"Cloud Maze","bold":true,"color":"white","type":"text"}',Tags:["pr.target","frostcobra.text"],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,-1.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.8f,1.8f,1.8f]},background:0}
summon minecraft:text_display ~-36 ~2.7 ~0 {text:'[{"text":"By ","color":"gray","type":"text"},{"text":"Maniacobra","color":"light_purple","type":"text"},{"text":" and ","color":"gray","type":"text"},{"text":"Frost_Chaos","color":"gold","type":"text"}]',Tags:["pr.target","frostcobra.text"],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,-1.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.6f,0.6f,0.6f]},background:1677721600}

# Forceload during a moment is necessary otherwise the plot can break

forceload add ~-40 ~-40 ~40 ~40
scoreboard players set spawn_delay frostcobra.count 21

return 1