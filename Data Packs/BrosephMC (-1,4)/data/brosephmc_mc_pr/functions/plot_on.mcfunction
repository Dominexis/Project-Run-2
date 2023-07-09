# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players
scoreboard objectives add brosephmc_mc_pr_tpTimer dummy
scoreboard objectives add brosephmc_mc_pr_SFXTimer dummy
scoreboard objectives add fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add brosephmc_mc_pr_otherTimer dummy
scoreboard players set 60 brosephmc_mc_pr_otherTimer 60

summon item_display ~ ~17.01 ~ {Rotation:[180f,0f],Tags:["brosephmcItemDisplay"],brightness:{sky:5,block:5},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[31.6f,31.6f,31.6f]},item:{id:"minecraft:music_disc_cat",Count:1b,tag:{CustomModelData:295002}}}
summon item_display ~ ~17.01 ~ {Rotation:[180f,0f],Tags:["brosephmcItemDisplay"],brightness:{sky:7,block:7},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[31.6f,31.6f,31.6f]},item:{id:"minecraft:music_disc_cat",Count:1b,tag:{CustomModelData:295003}}}
summon item_display ~36 ~1.5 ~3 {Rotation:[210f,0f],Tags:["brosephmcItemDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:music_disc_cat",Count:1b,tag:{CustomModelData:295004}}}
summon item_display ~3 ~17.5 ~38 {Rotation:[120f,0f],Tags:["brosephmcItemDisplay"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:music_disc_cat",Count:1b,tag:{CustomModelData:295004}}}

summon marker ~10 ~21 ~39 {Tags:["batSpawn"]}
summon marker ~12 ~21 ~39 {Tags:["batSpawn"]}
summon marker ~14 ~21 ~39 {Tags:["batSpawn"]}
summon marker ~16 ~21 ~39 {Tags:["batSpawn"]}
summon marker ~18 ~21 ~39 {Tags:["batSpawn"]}
summon marker ~20 ~21 ~39 {Tags:["batSpawn"]}
summon marker ~22 ~21 ~39 {Tags:["batSpawn"]}
summon marker ~24 ~21 ~39 {Tags:["batSpawn"]}
summon marker ~26 ~21 ~39 {Tags:["batSpawn"]}
summon marker ~28 ~21 ~39 {Tags:["batSpawn"]}
summon marker ~30 ~21 ~39 {Tags:["batSpawn"]}
summon marker ~32 ~21 ~39 {Tags:["batSpawn"]}
summon marker ~34 ~21 ~39 {Tags:["batSpawn"]}

team add brosephmc_mc_pr_angryBat
team modify brosephmc_mc_pr_angryBat color red

summon text_display ~19 ~19 ~32 {billboard:"fixed",Rotation:[180F,0F],Tags:["textArrow"],text:'{"text":"<---","bold":true}',background:0}