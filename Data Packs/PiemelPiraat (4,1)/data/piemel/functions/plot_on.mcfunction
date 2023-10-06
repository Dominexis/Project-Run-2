# summon static entities
summon armor_stand ~-28 ~44.5 ~-26 {Tags:["piemel.grabhooktarget"],NoGravity:1b,Marker:1b,Invisible:1b}
summon armor_stand ~37 ~13.5 ~-18 {Tags:["piemel.grabhooktarget"],NoGravity:1b,Marker:1b,Invisible:1b}
summon armor_stand ~-23 ~-16.5 ~25 {Tags:["piemel.grabhooktarget"],NoGravity:1b,Marker:1b,Invisible:1b}
summon armor_stand ~9 ~2 ~-34 {Tags:["piemel.grabhookfaketarget"],NoGravity:1b,Marker:1b,Invisible:1b}
summon armor_stand ~ ~56.5 ~ {Tags:["piemel.swingtarget"],NoGravity:1b,Marker:1b,Invisible:1b}
summon armor_stand ~ ~-10 ~ {Tags:["piemel.itemchecksum"],NoGravity:1b}

# create scoreboards
scoreboard objectives add piemel.values dummy
scoreboard objectives add piemel.coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add piemel.pullprog dummy
scoreboard objectives add piemel.swingprog dummy
scoreboard objectives add piemel.progress dummy
scoreboard objectives add piemel.hintto dummy



summon item ~-18 ~7 ~-37 {Tags:["piemel.trident"],Item:{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{}]}},Age:-32768s,PickupDelay:32767s}