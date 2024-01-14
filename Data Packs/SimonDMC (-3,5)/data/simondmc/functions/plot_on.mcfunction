# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

# Summon pickup-able items and their names
# Display bucket (Level 1)
summon minecraft:item ~4 ~30 ~-20 {PickupDelay:32767,Age:-32768,Tags:["sdmc.display-item","sdmc.display-bucket"],Item:{id:"minecraft:bucket",Count:1b},Invulnerable:1b}
summon minecraft:text_display ~4 ~30.65 ~-20 {billboard:"center",default_background:1b,text:'{"text":"Bucket","type":"text"}',Tags:["sdmc.display-name"]}
# Display crossbow (Level 2)
summon minecraft:item ~7 ~31 ~7 {PickupDelay:32767,Age:-32768,Tags:["sdmc.display-item","sdmc.display-crossbow"],Item:{id:"minecraft:crossbow",tag:{Enchantments:[{}],ChargedProjectiles:[{},{id:"minecraft:arrow",Count:1b},{}],Charged:1b},Count:1b},Invulnerable:1b}
summon minecraft:text_display ~7 ~31.65 ~7 {billboard:"center",default_background:1b,text:'{"text":"Crossbow","type":"text"}',Tags:["sdmc.display-name"]}
# Display bone meal (Level 3)
summon minecraft:item ~27 ~27 ~20 {PickupDelay:32767,Age:-32768,Tags:["sdmc.display-item","sdmc.display-bone-meal"],Item:{id:"minecraft:bone_meal",Count:1b},Invulnerable:1b}
summon minecraft:text_display ~27 ~27.65 ~20 {billboard:"center",default_background:1b,text:'{"text":"Bone Meal","type":"text"}',Tags:["sdmc.display-name"]}
# Display arrow (Level 5)
summon minecraft:item ~2 ~1 ~19 {PickupDelay:32767,Age:-32768,Tags:["sdmc.display-item","sdmc.display-arrow"],Item:{id:"minecraft:arrow",Count:1b},Invulnerable:1b}
summon minecraft:text_display ~2 ~1.65 ~19 {billboard:"center",default_background:1b,text:'{"text":"Arrow","type":"text"}',Tags:["sdmc.display-name"]}

# Summon click blocking entities
# Chest minecart (Enterance)
summon minecraft:interaction ~-3 ~33 ~-33 {width:1.3f,height:1.3f,Tags:["sdmc.click-block"]}
# Glow berries (Level 4)
summon minecraft:interaction ~15 ~32 ~21 {width:1.0f,height:2.0f,Tags:["sdmc.click-block"]}
summon minecraft:interaction ~12 ~32 ~19 {width:1.0f,height:2.0f,Tags:["sdmc.click-block"]}

# Summon level text displays
summon minecraft:text_display ~1 ~27 ~-11.5 {Rotation:[180.0f,0.0f],Tags:["sdmc.floor","sdmc.floor-1"],transformation:{left_rotation:[-0.707f,0.0f,0.0f,0.707f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[3.0f,3.0f,3.0f]},text:'{"text":"Level 1:\\nThe Drop","color":"#C4C4C4","type":"text"}',background:16711680}
summon minecraft:text_display ~9 ~31 ~.3 {Rotation:[90.0f,0.0f],Tags:["sdmc.floor","sdmc.floor-2"],transformation:{left_rotation:[-0.707f,0.0f,0.0f,0.707f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[2.5f,2.5f,2.5f]},text:'{"text":"Level 2:\\nThe Chute","color":"#C4C4C4","type":"text"}',background:16711680}
summon minecraft:text_display ~27 ~23 ~8.7 {Rotation:[180.0f,0.0f],Tags:["sdmc.floor","sdmc.floor-3"],transformation:{left_rotation:[-0.707f,0.0f,0.0f,0.707f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[2.5f,2.5f,2.5f]},text:'{"text":"Level 3:\\nThe Grow","color":"#C4C4C4","type":"text"}',background:16711680}
summon minecraft:text_display ~19.3 ~29.5 ~14 {Rotation:[270.0f,0.0f],Tags:["sdmc.floor","sdmc.floor-4"],transformation:{left_rotation:[-0.707f,0.0f,0.0f,0.707f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[2.5f,2.5f,2.5f]},text:'{"text":"Level 4:\\nThe Gate","color":"#DBDBDB","type":"text"}',background:16711680}
summon minecraft:text_display ~2.2 ~ ~14 {Rotation:[270.0f,0.0f],Tags:["sdmc.floor","sdmc.floor-5"],transformation:{left_rotation:[-0.707f,0.0f,0.0f,0.707f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[2.5f,2.5f,2.5f]},text:'{"text":"Level 5:\\nThe Final Blow","color":"#FFFFFF","type":"text"}',background:16711680}
summon minecraft:text_display ~25.5 ~29 ~-1 {Tags:["sdmc.floor","sdmc.floor-s"],transformation:{left_rotation:[-0.707f,0.0f,0.0f,0.707f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[2.5f,2.5f,2.5f]},text:'{"text":"Secret:\\nThe Float!","color":"#7D0208","type":"text"}',background:16711680}

# Summon finish text display
summon minecraft:text_display ~-15.49 ~6.1 ~13 {default_background:0b,Rotation:[-90.0f,0.0f],Tags:["sdmc.finish-title"],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[3.0f,3.0f,3.0f]},text:'{"text":"ꜰɪɴɪѕʜ","color":"white","type":"text"}',background:16711680}

# Create necessary scoreboards
scoreboard objectives add sdmc.sys dummy
scoreboard objectives add sdmc.item-pickup-timer dummy
scoreboard objectives add sdmc.item-despawn-timer dummy
scoreboard objectives add sdmc.arrow-timer dummy
scoreboard objectives add sdmc.bone-meal-timeout dummy
scoreboard objectives add sdmc.axolotl-timer dummy
scoreboard objectives add sdmc.item-counter dummy
scoreboard objectives add sdmc.start-jingle dummy
scoreboard objectives add sdmc.end-jingle dummy

scoreboard objectives add sdmc.item.crossbow dummy
scoreboard objectives add sdmc.item.arrow dummy
scoreboard objectives add sdmc.item.bone_meal dummy
scoreboard objectives add sdmc.item.bucket dummy
scoreboard objectives add sdmc.item.water_bucket dummy
scoreboard objectives add sdmc.item.axolotl_bucket dummy
scoreboard objectives add sdmc.item.bucket_2 dummy
scoreboard objectives add sdmc.item.water_bucket_2 dummy
scoreboard objectives add sdmc.item.axolotl_bucket_2 dummy

# Scoreboard constants
scoreboard players set sdmc.const.1 sdmc.item-counter 1
return 1