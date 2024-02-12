# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

# summons the black wall
summon minecraft:block_display ~-23 ~1 ~14 {Tags:["polds.blackwall"],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-1.5f,0.0f,0.0f],scale:[2.0f,4.0f,0.5f]},block_state:{Name:"minecraft:oxidized_copper"}}

# creates system scoreboard if it is not already created
scoreboard objectives add polds.system dummy

# summons the movers if they are not already created
execute unless entity @e[tag=polds.mover1] run summon minecraft:marker ~-33 ~1 ~9 {Tags:["polds.mover1"]}
execute unless entity @e[tag=polds.mover2] run summon minecraft:marker ~-28 ~1 ~-9 {Tags:["polds.mover2"]}
execute unless entity @e[tag=polds.mover3] run summon minecraft:marker ~-24 ~1 ~9 {Tags:["polds.mover3"]}
execute unless entity @e[tag=polds.mover4] run summon minecraft:marker ~-3 ~2 ~-6 {Tags:["polds.mover4"]}
execute unless entity @e[tag=polds.mover5] run summon minecraft:marker ~5 ~2 ~-1 {Tags:["polds.mover5"]}
execute unless entity @e[tag=polds.mover6] run summon minecraft:marker ~11 ~2 ~-7 {Tags:["polds.mover6"]}
execute unless entity @e[tag=polds.mover7] run summon minecraft:marker ~14 ~2 ~1 {Tags:["polds.mover7"]}

# summons the flippers
summon minecraft:marker ~-33 ~1 ~-12 {Tags:["polds.flipper1L","polds.flipper"]}
summon minecraft:marker ~-33 ~1 ~12 {Tags:["polds.flipper1R","polds.flipper"]}
summon minecraft:marker ~-28 ~1 ~-12 {Tags:["polds.flipper2L","polds.flipper"]}
summon minecraft:marker ~-28 ~1 ~12 {Tags:["polds.flipper2R","polds.flipper"]}
summon minecraft:marker ~-24 ~1 ~-12 {Tags:["polds.flipper3L","polds.flipper"]}
summon minecraft:marker ~-24 ~1 ~12 {Tags:["polds.flipper3R","polds.flipper"]}
summon minecraft:marker ~-3 ~2 ~-8 {Tags:["polds.flipper4L","polds.flipper"]}
summon minecraft:marker ~-3 ~2 ~3 {Tags:["polds.flipper4R","polds.flipper"]}
summon minecraft:marker ~8 ~2 ~-1 {Tags:["polds.flipper5U","polds.flipper"]}
summon minecraft:marker ~ ~2 ~-1 {Tags:["polds.flipper5D","polds.flipper"]}
summon minecraft:marker ~11 ~2 ~-8 {Tags:["polds.flipper6L","polds.flipper"]}
summon minecraft:marker ~11 ~2 ~3 {Tags:["polds.flipper6R","polds.flipper"]}
summon minecraft:marker ~14 ~2 ~-8 {Tags:["polds.flipper7L","polds.flipper"]}
summon minecraft:marker ~14 ~2 ~3 {Tags:["polds.flipper7R","polds.flipper"]}

# summon credit interaction entities
summon minecraft:interaction ~-38 ~3 ~10 {Tags:["polds.poldscredit"]}
summon minecraft:interaction ~-39 ~4 ~12 {Tags:["polds.simoncredit"]}

# sussy blocks
setblock ~-18 ~ ~3 minecraft:suspicious_sand{item:{id:"minecraft:carrot",Count:1b,tag:{display:{Name:'{"text":"Up","italic":false}'}}}}
setblock ~-15 ~1 ~-6 minecraft:suspicious_gravel{item:{id:"minecraft:potato",Count:1b,tag:{display:{Name:'{"text":"Down","italic":false}'}}}}

return 1