# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

scoreboard objectives add 1_sn_timer dummy
scoreboard objectives add 2_sn_timer dummy
scoreboard objectives add 3_sn_timer dummy
scoreboard objectives add 4_sn_timer dummy
scoreboard objectives add aljaz.hotbar_timer dummy

function aljaz:aljaz14/snake/snake1/summon
function aljaz:aljaz14/snake/snake2/summon
function aljaz:aljaz14/snake/snake3/summon
function aljaz:aljaz14/snake/snake4/summon

summon minecraft:item ~37 ~0 ~0 {Tags:["pickup"],Item:{id:"minecraft:elytra",tag:{Enchantments:[{}]},Count:1b},PickupDelay:32767s,PersistenceRequired:1b,Age:-32768s}
summon minecraft:item ~1 ~32 ~16 {Tags:["pickup"],Item:{id:"minecraft:elytra",tag:{Enchantments:[{}]},Count:1b},PickupDelay:32767s,PersistenceRequired:1b,Age:-32768s}
return 1