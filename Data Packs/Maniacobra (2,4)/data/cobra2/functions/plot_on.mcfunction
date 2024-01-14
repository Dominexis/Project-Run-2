scoreboard objectives add cobra2.flip1 minecraft.used:minecraft.netherite_boots
scoreboard objectives add cobra2.flip2 minecraft.used:minecraft.iron_boots

scoreboard objectives add cobra2.temp dummy
scoreboard objectives add cobra2.y dummy

scoreboard objectives add cobra2.ground dummy
scoreboard objectives add cobra2.inv dummy
scoreboard objectives add cobra2.ambient dummy

summon minecraft:text_display ~ ~18.5 ~-37 {Tags:["pr.target","cobra2.text"],Rotation:[180.0f,0.0f],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[2.0f,2.0f,2.0f]},text:'{"text":"Dualism Chamber","bold":true,"color":"black","type":"text"}',background:0}
summon minecraft:text_display ~ ~18 ~-37 {Tags:["pr.target","cobra2.text"],Rotation:[180.0f,0.0f],text:'{"text":"by Maniacobra","color":"black","type":"text"}',background:0}

summon minecraft:text_display ~-8 ~19.5 ~-7 {Tags:["pr.target","cobra2.text"],Rotation:[180.0f,0.0f],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[4.0f,4.0f,4.0f]},text:'{"text":"\\u2b06","bold":true,"color":"gray","type":"text"}',background:0,view_range:0.07f}
summon minecraft:text_display ~-8 ~50.5 ~-7 {Tags:["pr.target","cobra2.text"],Rotation:[180.0f,0.0f],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[4.0f,4.0f,4.0f]},text:'{"text":"\\u2b07","bold":true,"color":"gray","type":"text"}',background:0,view_range:0.07f}
summon minecraft:text_display ~-8 ~24.5 ~-11 {Tags:["pr.target","cobra2.text"],Rotation:[0.0f,0.0f],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[4.0f,4.0f,4.0f]},text:'{"text":"\\u2b06","bold":true,"color":"gray","type":"text"}',background:0,view_range:0.07f}
summon minecraft:text_display ~-8 ~46.5 ~-11 {Tags:["pr.target","cobra2.text"],Rotation:[0.0f,0.0f],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[4.0f,4.0f,4.0f]},text:'{"text":"\\u2b07","bold":true,"color":"gray","type":"text"}',background:0,view_range:0.07f}
summon minecraft:text_display ~ ~25 ~ {Tags:["pr.target","cobra2.text"],Rotation:[90.0f,0.0f],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[4.0f,4.0f,4.0f]},text:'{"text":"\\u2b07","bold":true,"color":"gray","type":"text"}',background:0,view_range:0.07f}
summon minecraft:text_display ~ ~45 ~ {Tags:["pr.target","cobra2.text"],Rotation:[90.0f,0.0f],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[4.0f,4.0f,4.0f]},text:'{"text":"\\u2b06","bold":true,"color":"gray","type":"text"}',background:0,view_range:0.07f}

summon minecraft:text_display ~-8 ~23 ~-5 {Tags:["pr.target","cobra2.text"],Rotation:[180.0f,0.0f],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[4.0f,4.0f,4.0f]},text:'{"text":"\\u2b06","bold":true,"color":"gray","type":"text"}',background:0,view_range:0.07f}
summon minecraft:text_display ~-8 ~47 ~-5 {Tags:["pr.target","cobra2.text"],Rotation:[180.0f,0.0f],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[4.0f,4.0f,4.0f]},text:'{"text":"\\u2b07","bold":true,"color":"gray","type":"text"}',background:0,view_range:0.07f}

summon minecraft:text_display ~3 ~45 ~3 {Tags:["pr.target","cobra2.text"],Rotation:[135.0f,0.0f],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[2.0f,2.0f,2.0f]},text:'{"text":"Don\'t walk on the glass !","bold":true,"color":"white","type":"text"}',background:0,view_range:0.15f}
summon minecraft:text_display ~3 ~26 ~3 {Tags:["pr.target","cobra2.text"],Rotation:[-45.0f,0.0f],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[2.0f,-2.0f,2.0f]},text:'{"text":"Don\'t walk on the glass !","bold":true,"color":"white","type":"text"}',background:0,view_range:0.15f}

return 1