# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players
summon minecraft:block_display ~3 ~-40 ~20 {Silent:1b,Tags:["pr.target","StoveFire"],brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.5f,0.0f,-0.5f],scale:[5.0f,3.0f,5.0f]},block_state:{Name:"minecraft:fire"}}
summon minecraft:block_display ~12 ~-40 ~20 {Silent:1b,Tags:["pr.target","StoveFire"],brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.5f,0.0f,-0.5f],scale:[5.0f,3.0f,5.0f]},block_state:{Name:"minecraft:fire"}}
summon minecraft:block_display ~12 ~-40 ~29 {Silent:1b,Tags:["pr.target","StoveFire"],brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.5f,0.0f,-0.5f],scale:[5.0f,3.0f,5.0f]},block_state:{Name:"minecraft:fire"}}
summon minecraft:block_display ~3 ~-40 ~29 {Silent:1b,Tags:["pr.target","StoveFire"],brightness:{sky:15,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.5f,0.0f,-0.5f],scale:[5.0f,3.0f,5.0f]},block_state:{Name:"minecraft:fire"}}
return 1