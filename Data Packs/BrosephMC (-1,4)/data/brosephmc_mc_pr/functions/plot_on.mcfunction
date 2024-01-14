# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players
scoreboard objectives add brosephmc_mc_pr_tpTimer dummy
scoreboard objectives add brosephmc_mc_pr_SFXTimer dummy
scoreboard objectives add fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add brosephmc_mc_pr_otherTimer dummy
scoreboard players set 60 brosephmc_mc_pr_otherTimer 60

summon minecraft:item_display ~ ~17.01 ~ {Rotation:[180.0f,0.0f],Tags:["brosephmcItemDisplay"],brightness:{sky:5,block:5},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[31.6f,31.6f,31.6f]},item:{id:"minecraft:music_disc_cat",tag:{CustomModelData:295002},Count:1b}}
summon minecraft:item_display ~ ~17.01 ~ {Rotation:[180.0f,0.0f],Tags:["brosephmcItemDisplay"],brightness:{sky:7,block:7},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[31.6f,31.6f,31.6f]},item:{id:"minecraft:music_disc_cat",tag:{CustomModelData:295003},Count:1b}}
summon minecraft:item_display ~36 ~1.5 ~3 {Rotation:[210.0f,0.0f],Tags:["brosephmcItemDisplay"],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:music_disc_cat",tag:{CustomModelData:295004},Count:1b}}
summon minecraft:item_display ~3 ~17.5 ~38 {Rotation:[120.0f,0.0f],Tags:["brosephmcItemDisplay"],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]},item:{id:"minecraft:music_disc_cat",tag:{CustomModelData:295004},Count:1b}}

summon minecraft:marker ~10 ~21 ~39 {Tags:["batSpawn"]}
summon minecraft:marker ~12 ~21 ~39 {Tags:["batSpawn"]}
summon minecraft:marker ~14 ~21 ~39 {Tags:["batSpawn"]}
summon minecraft:marker ~16 ~21 ~39 {Tags:["batSpawn"]}
summon minecraft:marker ~18 ~21 ~39 {Tags:["batSpawn"]}
summon minecraft:marker ~20 ~21 ~39 {Tags:["batSpawn"]}
summon minecraft:marker ~22 ~21 ~39 {Tags:["batSpawn"]}
summon minecraft:marker ~24 ~21 ~39 {Tags:["batSpawn"]}
summon minecraft:marker ~26 ~21 ~39 {Tags:["batSpawn"]}
summon minecraft:marker ~28 ~21 ~39 {Tags:["batSpawn"]}
summon minecraft:marker ~30 ~21 ~39 {Tags:["batSpawn"]}
summon minecraft:marker ~32 ~21 ~39 {Tags:["batSpawn"]}
summon minecraft:marker ~34 ~21 ~39 {Tags:["batSpawn"]}

team add brosephmc_mc_pr_angryBat
team modify brosephmc_mc_pr_angryBat color red

summon minecraft:text_display ~19 ~19 ~32 {billboard:"fixed",Rotation:[180.0f,0.0f],Tags:["textArrow"],text:'{"text":"<---","bold":true,"type":"text"}',background:0}
return 1