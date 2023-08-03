# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players
scoreboard objectives add sliceoflife.cp dummy
scoreboard objectives add sliceoflife.nextcp dummy
scoreboard objectives add sliceoflife.carrotonastick minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set placement sliceoflife.cp 0

execute positioned ~-15 ~-16 ~17 summon marker run function sliceolife:placecheckpoint
execute positioned ~21 ~-45 ~17 summon marker run function sliceolife:placecheckpoint
execute positioned ~-24 ~-42 ~14 summon marker run function sliceolife:placecheckpoint
execute positioned ~29 ~50 ~1 summon marker run function sliceolife:placecheckpoint

setblock ~-5 ~-13 ~-3 redstone_block