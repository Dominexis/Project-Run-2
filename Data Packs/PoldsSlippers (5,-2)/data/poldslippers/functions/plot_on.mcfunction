scoreboard objectives add Polds.EighthSecTimer dummy
scoreboard objectives add Polds.QuarterSecTimer dummy
scoreboard objectives add Polds.HalfSecTimer dummy

#Wood Platform Armor Stands
summon armor_stand ~-33 ~1 ~9 {Invisible:1b,Invulnerable:1b,Tags:["pr.target","WoodPlatform","180"],Rotation:[180f],NoGravity:1b}
summon armor_stand ~-28 ~1 ~-9 {Invisible:1b,Invulnerable:1b,Tags:["pr.target","WoodPlatform"],NoGravity:1b}
summon armor_stand ~-24 ~1 ~9 {Invisible:1b,Invulnerable:1b,Tags:["pr.target","WoodPlatform","180"],Rotation:[180f],NoGravity:1b}

#Wood Platforms
clone ~-29 ~-26 ~5 ~-31 ~-22 ~1 ~-34 ~0 ~7
clone ~-29 ~-26 ~5 ~-31 ~-22 ~1 ~-29 ~0 ~-11
clone ~-25 ~-26 ~2 ~-24 ~-22 ~6 ~-24 ~0 ~7

#Red Nether Brick Armor Stands
summon armor_stand ~1 ~1 ~2 {NoGravity:1b,Invisible:1b,Tags:["pr.target","Red_Nether_Brick"],Rotation:[-180f],Invulnerable:1b}
summon armor_stand ~11 ~1 ~-7 {NoGravity:1b,Invisible:1b,Tags:["pr.target","Red_Nether_Brick"],Rotation:[0f],Invulnerable:1b}

#Summon Chain Rails
summon block_display ~1 ~1 ~-8 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~1 ~1 ~-7 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~1 ~1 ~-6 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~1 ~1 ~-5 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~1 ~1 ~-4 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~1 ~1 ~-3 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~1 ~1 ~-2 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~1 ~1 ~-1 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~1 ~1 ~ {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~1 ~1 ~1 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~1 ~1 ~2 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~1 ~1 ~3 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}

summon block_display ~11 ~1 ~-8 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~11 ~1 ~-7 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~11 ~1 ~-6 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~11 ~1 ~-5 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~11 ~1 ~-4 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~11 ~1 ~-3 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~11 ~1 ~-2 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~11 ~1 ~-1 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~11 ~1 ~ {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~11 ~1 ~1 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~11 ~1 ~2 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}
summon block_display ~11 ~1 ~3 {Tags:["pr.target","Rail"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,0f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:chain",Properties:{axis:"z"}}}

#BlackStonePlatform Armor Stands
summon armor_stand ~-2 ~2 ~-5 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["pr.target","BlackstoneSlab","4x3"]}
summon armor_stand ~4 ~2 ~-1 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["pr.target","BlackstoneSlab","3x4"],Rotation:[-180f]}
summon armor_stand ~15 ~2 ~1 {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["pr.target","BlackstoneSlab","3x2"]}