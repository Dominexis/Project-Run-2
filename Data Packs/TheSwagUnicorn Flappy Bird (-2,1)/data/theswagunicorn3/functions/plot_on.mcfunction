scoreboard objectives add swag.HalfSec dummy
scoreboard objectives add swag.fall_flying dummy
scoreboard objectives add swag.elytra_count dummy

summon text_display ~34 ~2 ~ {view_range:1f,billboard:"fixed",Tags:["pr.target","DJInstructions"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,.55f,0f,.55f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"text":"You have infinite jumps, just don\'t fall or hit your head!","color":"green","bold":true}'}
summon text_display ~36.1 ~5.15 ~ {view_range:1f,billboard:"fixed",Tags:["pr.target","Flappy"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"text":"Flappy","color":"green","bold":true}'}
summon text_display ~36.1 ~4.15 ~ {view_range:1f,billboard:"fixed",Tags:["pr.target","Flappy"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"text":"Fowl","color":"green","bold":true}'}