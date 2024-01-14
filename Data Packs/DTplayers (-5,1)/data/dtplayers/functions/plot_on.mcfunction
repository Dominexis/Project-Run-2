#plot_on: This function will run when a player enters your plot after there was no one in it. Use this to initialize your plot (create scoreboard objectives, spawn entities, prepare the blocks, etc.).

#Scoreboard initialization
scoreboard objectives add dtplayers.air_time dummy
scoreboard objectives add dtplayers.jump minecraft.custom:minecraft.jump
scoreboard objectives add dtplayers.oxygen dummy
scoreboard objectives add dtplayers.oxygen_lose dummy
#reconsider this scoreboard v
scoreboard objectives add dtplayers.death deathCount
scoreboard objectives add dtplayers.rocket.timer dummy
scoreboard objectives add dtplayers.rocket.id dummy
scoreboard objectives add dtplayers.rocket.y_vel dummy
scoreboard objectives add dtplayers.rocket.y_pos dummy

#summon block displays
#summon block_display ~-0.5625 ~-0.625 ~-0.5 {width:2f,height:3f,brightness:{sky:10,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.125f,2.25f,1f]},block_state:{Name:"minecraft:light_blue_stained_glass_pane",Properties:{east:"true",west:"true"}}}

#rl 1
summon minecraft:block_display ~5.4375 ~20.875 ~4.5 {Rotation:[0.0f,0.0f],width:2.0f,height:3.0f,Tags:["dtplayers.prop"],brightness:{sky:10,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.125f,2.25f,1.0f]},block_state:{},BlockState:{}}

#rl 2
summon minecraft:block_display ~1.4375 ~45.875 ~-12.5 {Rotation:[90.0f,0.0f],width:2.0f,height:3.0f,Tags:["dtplayers.prop"],brightness:{sky:10,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.125f,2.25f,1.0f]},block_state:{},BlockState:{}}

#rl 3
summon minecraft:block_display ~6.4375 ~59.875 ~-7.5 {Rotation:[90.0f,0.0f],width:2.0f,height:3.0f,Tags:["dtplayers.prop"],brightness:{sky:10,block:15},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[1.125f,2.25f,1.0f]},block_state:{},BlockState:{}}

return 1