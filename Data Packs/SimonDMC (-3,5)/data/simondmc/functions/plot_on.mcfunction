# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

# Summon pickup-able items and their names
# Display bucket (Level 1)
summon item ~4 ~30 ~-20 {PickupDelay:32767,Age:-32768,Tags:["sdmc.display-item","sdmc.display-bucket"],Item:{id:"minecraft:bucket",Count:1b},Invulnerable:1b}
summon text_display ~4 ~30.65 ~-20 {billboard:"center",default_background:1b,text:'{"text":"Bucket"}',Tags:["sdmc.display-name"]}
# Display crossbow (Level 2)
summon item ~7 ~31 ~7 {PickupDelay:32767,Age:-32768,Tags:["sdmc.display-item","sdmc.display-crossbow"],Item:{id:"minecraft:crossbow",Count:1b,tag:{Enchantments:[{}],ChargedProjectiles:[{},{id:"minecraft:arrow",Count:1b},{}],Charged:1b}},Invulnerable:1b}
summon text_display ~7 ~31.65 ~7 {billboard:"center",default_background:1b,text:'{"text":"Crossbow"}',Tags:["sdmc.display-name"]}
# Display arrow (Level 5)
summon item ~2 ~1 ~19 {PickupDelay:32767,Age:-32768,Tags:["sdmc.display-item","sdmc.display-arrow"],Item:{id:"minecraft:arrow",Count:1b},Invulnerable:1b}
summon text_display ~2 ~1.65 ~19 {billboard:"center",default_background:1b,text:'{"text":"Arrow"}',Tags:["sdmc.display-name"]}

# Summon click blocking entities
# Chest minecart (Enterance)
summon interaction ~-3 ~33 ~-33 {width:1.3f,height:1.3f,Tags:["sdmc.click-block"]}
# Glow berries (Level 4)
summon interaction ~15 ~32 ~21 {width:1.0f,height:2.0f,Tags:["sdmc.click-block"]}
summon interaction ~12 ~32 ~19 {width:1.0f,height:2.0f,Tags:["sdmc.click-block"]}

# Summon bone meal click entity
summon interaction ~27 ~25 ~17 {width:1.2f,height:2f,Tags:["sdmc.bone-meal-click"]}

# Summon level text displays
summon text_display ~1 ~27 ~-11.5 {Rotation:[180F,0F],Tags:["sdmc.floor","sdmc.floor-1"],transformation:{left_rotation:[-0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"text":"Level 1:\\nThe Drop","color":"#C4C4C4"}',background:16711680} 
summon text_display ~9 ~31 ~.3 {Rotation:[90F,0F],Tags:["sdmc.floor","sdmc.floor-2"],transformation:{left_rotation:[-0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},text:'{"text":"Level 2:\\nThe Chute","color":"#C4C4C4"}',background:16711680}
summon text_display ~27 ~23 ~8.7 {Rotation:[180F,0F],Tags:["sdmc.floor","sdmc.floor-3"],transformation:{left_rotation:[-0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},text:'{"text":"Level 3:\\nThe Grow","color":"#C4C4C4"}',background:16711680}
summon text_display ~19.3 ~29.5 ~14 {Rotation:[270F,0F],Tags:["sdmc.floor","sdmc.floor-4"],transformation:{left_rotation:[-0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},text:'{"text":"Level 4:\\nThe Gate","color":"#DBDBDB"}',background:16711680}
summon text_display ~2.2 ~ ~14 {Rotation:[270F,0F],Tags:["sdmc.floor","sdmc.floor-5"],transformation:{left_rotation:[-0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},text:'{"text":"Level 5:\\nThe Final Blow","color":"#FFFFFF"}',background:16711680}
summon text_display ~25.5 ~29 ~-1 {Tags:["sdmc.floor","sdmc.floor-s"],transformation:{left_rotation:[-0.707f,0f,0f,0.707f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,2.5f]},text:'{"text":"Secret:\\nThe Float!","color":"#7D0208"}',background:16711680}

# Summon finish text display
summon text_display ~-15.49 ~6.1 ~13 {default_background:0b,Rotation:[-90F,0F],Tags:["sdmc.finish-title"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"text":"ꜰɪɴɪѕʜ","color":"white"}',background:16711680}

# Create necessary scoreboards
scoreboard objectives add sdmc.sys dummy
scoreboard objectives add sdmc.item-pickup-timer dummy
scoreboard objectives add sdmc.item-despawn-timer dummy
scoreboard objectives add sdmc.arrow-timer dummy
scoreboard objectives add sdmc.axolotl-timer dummy
scoreboard objectives add sdmc.item-counter dummy
scoreboard objectives add sdmc.start-jingle dummy
scoreboard objectives add sdmc.end-jingle dummy

# Scoreboard constants
scoreboard players set sdmc.const.1 sdmc.item-counter 1