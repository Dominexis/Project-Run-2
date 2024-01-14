scoreboard objectives add swag.HalfSec dummy
scoreboard objectives add swag.fall_flying dummy
scoreboard objectives add swag.elytra_count dummy

summon minecraft:text_display ~34 ~2 ~ {view_range:1.0f,billboard:"fixed",Tags:["pr.target","DJInstructions"],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.55f,0.0f,0.55f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},text:'{"text":"You have infinite jumps, just don\'t fall or hit your head!","color":"green","bold":true,"type":"text"}'}
summon minecraft:text_display ~36.1 ~5.15 ~ {view_range:1.0f,billboard:"fixed",Tags:["pr.target","Flappy"],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,1.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},text:'{"text":"Flappy","color":"green","bold":true,"type":"text"}'}
summon minecraft:text_display ~36.1 ~4.15 ~ {view_range:1.0f,billboard:"fixed",Tags:["pr.target","Flappy"],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,1.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},text:'{"text":"Fowl","color":"green","bold":true,"type":"text"}'}
return 1