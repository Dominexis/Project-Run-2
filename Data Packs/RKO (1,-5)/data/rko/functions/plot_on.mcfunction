# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

scoreboard objectives add rko.jump minecraft.custom:minecraft.jump

scoreboard objectives add rko.time dummy
scoreboard objectives add rko.particle dummy
scoreboard objectives add rko.ambient dummy
scoreboard objectives add rko.checkpoint dummy
scoreboard objectives add rko.hand dummy
scoreboard objectives add rko.box dummy
scoreboard objectives add rko.win dummy

scoreboard players set belt rko.ambient 374
scoreboard players set factory rko.ambient 284
scoreboard players set pipes rko.ambient 234

function rko:structure/entity/kill_all
function rko:structure/load_all
return 1