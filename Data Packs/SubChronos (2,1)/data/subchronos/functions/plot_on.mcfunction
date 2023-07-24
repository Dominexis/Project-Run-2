# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players
scoreboard objectives add subchronos_hive dummy
scoreboard objectives add subchronos_cp dummy
scoreboard objectives add subchronos_y deathCount

kill @e[type=block_display,tag=pr.target]

## PIT 1
#Honey
summon block_display ~22 ~50.5 ~-24 {brightness:{sky:10,block:5},start_interpolation:1,interpolation_duration:10,Tags:["subchronos_bee","subchronos_pit1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[33f,1f,16f],translation:[-20f,0f,-7f]},block_state:{Name:"minecraft:honey_block"},view_range:5f,shadow_radius:0f}
summon block_display ~22 ~50.5 ~-24 {brightness:{sky:10,block:5},start_interpolation:1,interpolation_duration:10,Tags:["subchronos_bee","subchronos_pit1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[33f,1f,16f],translation:[-20f,0f,-7f]},block_state:{Name:"minecraft:honey_block"},view_range:5f,shadow_radius:0f}

#Platforms
summon block_display ~27 ~50.5 ~-25 {brightness:{sky:10,block:5},start_interpolation:1,interpolation_duration:10,Tags:["subchronos_bee","subchronos_platform1_pit1","subchronos_platform_pit1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f],translation:[-0.5f,-0.50f,-0.5f]},block_state:{Name:"minecraft:honeycomb_block"},view_range:5f,shadow_radius:0f}
summon block_display ~28 ~50.5 ~-21 {brightness:{sky:10,block:5},start_interpolation:1,interpolation_duration:10,Tags:["subchronos_bee","subchronos_platform2_pit1","subchronos_platform_pit1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f],translation:[-0.5f,-0.50f,-0.5f]},block_state:{Name:"minecraft:honeycomb_block"},view_range:5f,shadow_radius:0f}



## PIT 2
#Honey
summon block_display ~32 ~53.5 ~26 {brightness:{sky:10,block:5},start_interpolation:1,interpolation_duration:10,Tags:["subchronos_bee","subchronos_pit2_1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[12f,1f,17f],translation:[-6f,0f,-9f]},block_state:{Name:"minecraft:honey_block"},view_range:5f,shadow_radius:0f}
summon block_display ~23 ~53.5 ~32 {brightness:{sky:10,block:5},start_interpolation:1,interpolation_duration:10,Tags:["subchronos_bee","subchronos_pit2_2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[9f,1f,8.5f],translation:[-6f,0f,-4.49f]},block_state:{Name:"minecraft:honey_block"},view_range:5f,shadow_radius:0f}
summon block_display ~32 ~53.5 ~26 {brightness:{sky:10,block:5},start_interpolation:1,interpolation_duration:10,Tags:["subchronos_bee","subchronos_pit2_1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[12f,1f,17f],translation:[-6f,0f,-9f]},block_state:{Name:"minecraft:honey_block"},view_range:5f,shadow_radius:0f}
summon block_display ~23 ~53.5 ~32 {brightness:{sky:10,block:5},start_interpolation:1,interpolation_duration:10,Tags:["subchronos_bee","subchronos_pit2_2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[9f,1f,8.5f],translation:[-6f,0f,-4.49f]},block_state:{Name:"minecraft:honey_block"},view_range:5f,shadow_radius:0f}

#Platforms
summon block_display ~25 ~53.5 ~30 {brightness:{sky:10,block:5},start_interpolation:1,interpolation_duration:10,Tags:["subchronos_bee","subchronos_platform2_pit2","subchronos_platform_pit2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f],translation:[-0.5f,-0.50f,-0.5f]},block_state:{Name:"minecraft:honeycomb_block"},view_range:5f,shadow_radius:0f}
summon block_display ~21 ~53.5 ~31 {brightness:{sky:10,block:5},start_interpolation:1,interpolation_duration:10,Tags:["subchronos_bee","subchronos_platform1_pit2","subchronos_platform_pit2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2f,2f,2f],translation:[-0.5f,-0.50f,-0.5f]},block_state:{Name:"minecraft:honeycomb_block"},view_range:5f,shadow_radius:0f}



## PIT 3
#Honey
summon block_display ~ ~-3.5 ~ {brightness:{sky:10,block:5},start_interpolation:1,interpolation_duration:10,Tags:["subchronos_bee","subchronos_pit3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[70f,1f,70f],translation:[-35f,0f,-35f]},block_state:{Name:"minecraft:honey_block"},view_range:5f,shadow_radius:0f}
summon block_display ~ ~-3.5 ~ {brightness:{sky:10,block:5},start_interpolation:1,interpolation_duration:10,Tags:["subchronos_bee","subchronos_pit3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[70f,1f,70f],translation:[-35f,0f,-35f]},block_state:{Name:"minecraft:honey_block"},view_range:5f,shadow_radius:0f}

#Platforms
summon block_display ~16 ~-3.5 ~-5 {brightness:{sky:10,block:5},start_interpolation:1,interpolation_duration:10,Tags:["subchronos_bee","subchronos_platform1_pit3","subchronos_platform_pit3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f],translation:[-0.5f,-0.50f,-0.5f]},block_state:{Name:"minecraft:honeycomb_block"},view_range:5f,shadow_radius:0f}
summon block_display ~18 ~-3.5 ~ {brightness:{sky:10,block:5},start_interpolation:1,interpolation_duration:10,Tags:["subchronos_bee","subchronos_platform2_pit3","subchronos_platform_pit3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f],translation:[-0.5f,-0.50f,-0.5f]},block_state:{Name:"minecraft:honeycomb_block"},view_range:5f,shadow_radius:0f}
summon block_display ~17 ~-3.5 ~5 {brightness:{sky:10,block:5},start_interpolation:1,interpolation_duration:10,Tags:["subchronos_bee","subchronos_platform3_pit3","subchronos_platform_pit3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f],translation:[-0.5f,-0.50f,-0.5f]},block_state:{Name:"minecraft:honeycomb_block"},view_range:5f,shadow_radius:0f}
summon block_display ~16 ~-3.5 ~9 {brightness:{sky:10,block:5},start_interpolation:1,interpolation_duration:10,Tags:["subchronos_bee","subchronos_platform4_pit3","subchronos_platform_pit3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f],translation:[-0.5f,-0.50f,-0.5f]},block_state:{Name:"minecraft:honeycomb_block"},view_range:5f,shadow_radius:0f}