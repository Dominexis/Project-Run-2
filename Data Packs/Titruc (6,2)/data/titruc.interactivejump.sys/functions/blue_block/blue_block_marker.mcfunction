summon minecraft:interaction ~ ~ ~ {Tags:["pr.target","titruc.interactivejump.blueblock.look"],width:1.0f,height:1.0f}
summon minecraft:block_display ~-0.5 ~ ~-0.5 {Tags:["pr.target","titruc.interactivejump.blueblock.look"],Passengers:[{id:"minecraft:block_display",Tags:["pr.taget","titruc.interactivejump.blueblock.look"],block_state:{},transformation:[0.8f,0.0f,0.0f,0.1f,0.0f,0.8f,0.0f,0.1f,0.0f,0.0f,0.8f,0.1f,0.0f,0.0f,0.0f,1.0f],BlockState:{}},{id:"minecraft:item_display",Tags:["pr.target","titruc.interactivejump.blueblock.look"],item:{id:"minecraft:ender_eye",Count:1b},item_display:"none",transformation:[0.5f,0.0f,0.0f,0.5f,0.0f,0.5f,0.0f,0.5f,0.0f,0.0f,0.5f,0.5f,0.0f,0.0f,0.0f,1.0f]},{id:"minecraft:block_display",Tags:["pr.taget","titruc.interactivejump.blueblock.look"],block_state:{},transformation:[0.802f,0.0f,0.0f,0.099f,0.0f,0.8f,0.0f,0.7096f,0.0f,0.0f,0.802f,0.099f,0.0f,0.0f,0.0f,1.0f],BlockState:{}},{id:"minecraft:block_display",Tags:["pr.taget","titruc.interactivejump.blueblock.look"],block_state:{},transformation:[0.7f,0.0f,0.0f,0.125f,0.0f,0.7f,0.0f,0.9375f,0.0f,0.0f,0.7f,0.15f,0.0f,0.0f,0.0f,1.0f],BlockState:{}},{id:"minecraft:block_display",Tags:["pr.taget","titruc.interactivejump.blueblock.look"],block_state:{},transformation:[0.802f,0.0f,0.0f,0.099f,0.0f,0.8f,0.0f,-0.1461f,0.0f,0.0f,0.802f,0.099f,0.0f,0.0f,0.0f,1.0f],BlockState:{}},{id:"minecraft:block_display",Tags:["pr.taget","titruc.interactivejump.blueblock.look"],block_state:{},transformation:[0.7f,0.0f,0.0f,0.125f,0.0f,0.7f,0.0f,-0.5625f,0.0f,0.0f,0.7f,0.15f,0.0f,0.0f,0.0f,1.0f],BlockState:{}}]}
particle minecraft:dust 0.086 0.635 0.773 1 ~ ~1 ~ 1 1 1 0.01 42 normal @a[distance=..12,tag=pr.target]
return 1