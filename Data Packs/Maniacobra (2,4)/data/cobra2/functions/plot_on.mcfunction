scoreboard objectives add cobra2.flip1 minecraft.used:minecraft.netherite_boots
scoreboard objectives add cobra2.flip2 minecraft.used:minecraft.iron_boots

scoreboard objectives add cobra2.temp dummy
scoreboard objectives add cobra2.y dummy

scoreboard objectives add cobra2.ground dummy
scoreboard objectives add cobra2.inv dummy

summon minecraft:text_display ~ ~18.5 ~-37 {Tags:["pr.target","cobra2.text"],Rotation:[180f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"Dualism Chamber","bold":true,"color":"black"}',background:0}
summon minecraft:text_display ~ ~18 ~-37 {Tags:["pr.target","cobra2.text"],Rotation:[180f,0f],text:'{"text":"by Maniacobra","color":"black"}',background:0}

summon minecraft:text_display ~-8 ~19.5 ~-7 {Tags:["pr.target","cobra2.text"],Rotation:[180f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},text:'{"text":"\\u2b06","bold":true,"color":"gray"}',background:0,view_range:0.07f}
summon minecraft:text_display ~-8 ~50.5 ~-7 {Tags:["pr.target","cobra2.text"],Rotation:[180f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},text:'{"text":"\\u2b07","bold":true,"color":"gray"}',background:0,view_range:0.07f}
summon minecraft:text_display ~-8 ~24.5 ~-11 {Tags:["pr.target","cobra2.text"],Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},text:'{"text":"\\u2b06","bold":true,"color":"gray"}',background:0,view_range:0.07f}
summon minecraft:text_display ~-8 ~46.5 ~-11 {Tags:["pr.target","cobra2.text"],Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},text:'{"text":"\\u2b07","bold":true,"color":"gray"}',background:0,view_range:0.07f}
summon minecraft:text_display ~ ~25 ~ {Tags:["pr.target","cobra2.text"],Rotation:[90f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},text:'{"text":"\\u2b07","bold":true,"color":"gray"}',background:0,view_range:0.07f}
summon minecraft:text_display ~ ~45 ~ {Tags:["pr.target","cobra2.text"],Rotation:[90f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},text:'{"text":"\\u2b06","bold":true,"color":"gray"}',background:0,view_range:0.07f}

summon minecraft:text_display ~-8 ~23 ~-5 {Tags:["pr.target","cobra2.text"],Rotation:[180f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},text:'{"text":"\\u2b06","bold":true,"color":"gray"}',background:0,view_range:0.07f}
summon minecraft:text_display ~-8 ~47 ~-5 {Tags:["pr.target","cobra2.text"],Rotation:[180f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},text:'{"text":"\\u2b07","bold":true,"color":"gray"}',background:0,view_range:0.07f}

summon minecraft:text_display ~3 ~57 ~3 {Tags:["pr.target","cobra2.text"],Rotation:[135f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"Don\'t walk on the glass !","bold":true,"color":"black"}',background:1694498815,view_range:0.1f}
summon minecraft:text_display ~3 ~14 ~3 {Tags:["pr.target","cobra2.text"],Rotation:[-45f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,-2f,2f]},text:'{"text":"Don\'t walk on the glass !","bold":true,"color":"black"}',background:1694498815,view_range:0.1f}
