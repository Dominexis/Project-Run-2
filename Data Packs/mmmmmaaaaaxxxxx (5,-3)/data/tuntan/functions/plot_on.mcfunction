# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players
scoreboard objectives add tuntan_points dummy
scoreboard objectives add tuntan_tunnels dummy
scoreboard objectives add tuntan_clicked minecraft.used:minecraft.carrot_on_a_stick
summon marker ~ ~151 ~ {Tags:["tuntan.spawn","tuntan.marker"]}
summon marker ~-15 ~67 ~ {Tags:["tuntan.teleport","tuntan.marker","tuntan.finish","tuntan.finish0"]}
summon marker ~21 ~-60 ~35 {Tags:["tuntan.teleport","tuntan.marker","tuntan.finish","tuntan.finish1"]}
summon marker ~2 ~-19 ~-7 {Tags:["tuntan.teleport","tuntan.marker","tuntan.finish","tuntan.finish2"]}
summon marker ~1 ~-26 ~-37 {Tags:["tuntan.teleport","tuntan.marker","tuntan.finish","tuntan.finish3"]}
summon marker ~-7 ~118 ~7 {Tags:["tuntan.marker","tuntan.finish","tuntan.finish4"]}
summon marker ~-9 ~114 ~-8 {Tags:["tuntan.marker","tuntan.finish","tuntan.finish5"]}
summon marker ~ ~-10 ~ {Tags:["tuntan.marker","tuntan.finish","tuntan.finish6"]}
summon marker ~35 ~223 ~-23 {Tags:["tuntan.teleport","tuntan.marker","tuntan.finish","tuntan.finish7"]}
summon marker ~ ~130 ~-22 {Tags:["tuntan.marker","tuntan.finish","tuntan.finish8"]}
summon marker ~9 ~282 ~-22 {Tags:["tuntan.teleport","tuntan.marker","tuntan.finish","tuntan.finish9"]}
summon marker ~-36 ~252 ~35 {Tags:["tuntan.teleport","tuntan.marker","tuntan.finish","tuntan.finish10"]}