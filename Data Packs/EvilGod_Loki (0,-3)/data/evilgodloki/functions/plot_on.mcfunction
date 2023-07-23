# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players
kill @e[tag=loki,tag=pr.target]
summon marker ~ ~-1 ~ {Tags:["loki0000","loki","pr.target"]}
summon item_frame ~2 ~2 ~-11 {Invisible:1b,Facing:3b,Tags:["lokitemp","loki","pr.target"],Item:{}}

#button
execute as @e[tag=lokitemp,tag=pr.target] at @s run summon block_display ^-0.25 ^0.125 ^-0.031 {shadow_radius:0f,width:0.2f,height:0.2f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.0625f]},block_state:{Name:"minecraft:iron_block"},Tags:["loki1","loki","lokik","pr.target"],brightness:{sky:15,block:15}}
execute as @e[tag=lokitemp,tag=pr.target] at @s run summon block_display ^-0.0625 ^0.125 ^-0.031 {shadow_radius:0f,width:0.2f,height:0.2f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.0625f]},block_state:{Name:"minecraft:iron_block"},Tags:["loki2","loki","lokik","pr.target"],brightness:{sky:15,block:15}}
execute as @e[tag=lokitemp,tag=pr.target] at @s run summon block_display ^0.125 ^0.125 ^-0.031 {shadow_radius:0f,width:0.2f,height:0.2f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.0625f]},block_state:{Name:"minecraft:iron_block"},Tags:["loki3","loki","lokik","pr.target"],brightness:{sky:15,block:15}}
execute as @e[tag=lokitemp,tag=pr.target] at @s run summon block_display ^-0.25 ^-0.0625 ^-0.031 {shadow_radius:0f,width:0.2f,height:0.2f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.0625f]},block_state:{Name:"minecraft:iron_block"},Tags:["loki4","loki","lokik","pr.target"],brightness:{sky:15,block:15}}
execute as @e[tag=lokitemp,tag=pr.target] at @s run summon block_display ^-0.0625 ^-0.0625 ^-0.031 {shadow_radius:0f,width:0.2f,height:0.2f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.0625f]},block_state:{Name:"minecraft:iron_block"},Tags:["loki5","loki","lokik","pr.target"],brightness:{sky:15,block:15}}
execute as @e[tag=lokitemp,tag=pr.target] at @s run summon block_display ^0.125 ^-0.0625 ^-0.031 {shadow_radius:0f,width:0.2f,height:0.2f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.0625f]},block_state:{Name:"minecraft:iron_block"},Tags:["loki6","loki","lokik","pr.target"],brightness:{sky:15,block:15}}
execute as @e[tag=lokitemp,tag=pr.target] at @s run summon block_display ^-0.25 ^-0.25 ^-0.031 {shadow_radius:0f,width:0.2f,height:0.2f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.0625f]},block_state:{Name:"minecraft:iron_block"},Tags:["loki7","loki","lokik","pr.target"],brightness:{sky:15,block:15}}
execute as @e[tag=lokitemp,tag=pr.target] at @s run summon block_display ^-0.0625 ^-0.25 ^-0.031 {shadow_radius:0f,width:0.2f,height:0.2f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.0625f]},block_state:{Name:"minecraft:iron_block"},Tags:["loki8","loki","lokik","pr.target"],brightness:{sky:15,block:15}}
execute as @e[tag=lokitemp,tag=pr.target] at @s run summon block_display ^0.125 ^-0.25 ^-0.031 {shadow_radius:0f,width:0.2f,height:0.2f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.0625f]},block_state:{Name:"minecraft:iron_block"},Tags:["loki9","loki","lokik","pr.target"],brightness:{sky:15,block:15}}
execute as @e[tag=lokitemp,tag=pr.target] at @s run summon block_display ^-0.25 ^-0.4365 ^-0.031 {shadow_radius:0f,width:0.2f,height:0.2f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.0625f]},block_state:{Name:"minecraft:iron_block"},Tags:["lokix","loki","lokik","pr.target"],brightness:{sky:15,block:15}}
execute as @e[tag=lokitemp,tag=pr.target] at @s run summon block_display ^-0.0625 ^-0.4365 ^-0.031 {shadow_radius:0f,width:0.2f,height:0.2f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.0625f]},block_state:{Name:"minecraft:iron_block"},Tags:["loki0","loki","lokik","pr.target"],brightness:{sky:15,block:15}}
execute as @e[tag=lokitemp,tag=pr.target] at @s run summon block_display ^0.125 ^-0.4365 ^-0.031 {shadow_radius:0f,width:0.2f,height:0.2f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.0625f]},block_state:{Name:"minecraft:iron_block"},Tags:["lokiv","loki","lokik","pr.target"],brightness:{sky:15,block:15}}

#hitbox
execute as @e[tag=loki1,tag=pr.target] at @s run summon interaction ^0.0625 ^-0.0025 ^ {width:0.13f,height:0.13f,Tags:["loki","loki11","pr.target"]}
execute as @e[tag=loki2,tag=pr.target] at @s run summon interaction ^0.0625 ^-0.0025 ^ {width:0.13f,height:0.13f,Tags:["loki","loki22","pr.target"]}
execute as @e[tag=loki3,tag=pr.target] at @s run summon interaction ^0.0625 ^-0.0025 ^ {width:0.13f,height:0.13f,Tags:["loki","loki33","pr.target"]}
execute as @e[tag=loki4,tag=pr.target] at @s run summon interaction ^0.0625 ^-0.0025 ^ {width:0.13f,height:0.13f,Tags:["loki","loki44","pr.target"]}
execute as @e[tag=loki5,tag=pr.target] at @s run summon interaction ^0.0625 ^-0.0025 ^ {width:0.13f,height:0.13f,Tags:["loki","loki55","pr.target"]}
execute as @e[tag=loki6,tag=pr.target] at @s run summon interaction ^0.0625 ^-0.0025 ^ {width:0.13f,height:0.13f,Tags:["loki","loki66","pr.target"]}
execute as @e[tag=loki7,tag=pr.target] at @s run summon interaction ^0.0625 ^-0.0025 ^ {width:0.13f,height:0.13f,Tags:["loki","loki77","pr.target"]}
execute as @e[tag=loki8,tag=pr.target] at @s run summon interaction ^0.0625 ^-0.0025 ^ {width:0.13f,height:0.13f,Tags:["loki","loki88","pr.target"]}
execute as @e[tag=loki9,tag=pr.target] at @s run summon interaction ^0.0625 ^-0.0025 ^ {width:0.13f,height:0.13f,Tags:["loki","loki99","pr.target"]}
execute as @e[tag=lokix,tag=pr.target] at @s run summon interaction ^0.0625 ^-0.0025 ^ {width:0.13f,height:0.13f,Tags:["loki","lokixx","pr.target"]}
execute as @e[tag=loki0,tag=pr.target] at @s run summon interaction ^0.0625 ^-0.0025 ^ {width:0.13f,height:0.13f,Tags:["loki","loki00","pr.target"]}
execute as @e[tag=lokiv,tag=pr.target] at @s run summon interaction ^0.0625 ^-0.0025 ^ {width:0.13f,height:0.13f,Tags:["loki","lokivv","pr.target"]}

#number
execute as @e[tag=loki1,tag=pr.target] at @s run summon text_display ^0.055 ^-0.023 ^0.0625 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.75f,0.8f]},text:'[{"text":"₁","color":"black","bold":false}]',background:0,Tags:["loki","loki1","lokik","pr.target"]}
execute as @e[tag=loki2,tag=pr.target] at @s run summon text_display ^0.053 ^-0.023 ^0.0625 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.75f,0.8f]},text:'[{"text":"₂","color":"black","bold":false}]',background:0,Tags:["loki","loki2","lokik","pr.target"]}
execute as @e[tag=loki3,tag=pr.target] at @s run summon text_display ^0.053 ^-0.023 ^0.0625 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.75f,0.8f]},text:'[{"text":"₃","color":"black","bold":false}]',background:0,Tags:["loki","loki3","lokik","pr.target"]}
execute as @e[tag=loki4,tag=pr.target] at @s run summon text_display ^0.053 ^-0.023 ^0.0625 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.75f,0.8f]},text:'[{"text":"₄","color":"black","bold":false}]',background:0,Tags:["loki","loki4","lokik","pr.target"]}
execute as @e[tag=loki5,tag=pr.target] at @s run summon text_display ^0.053 ^-0.023 ^0.0625 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.75f,0.8f]},text:'[{"text":"₅","color":"black","bold":false}]',background:0,Tags:["loki","loki5","lokik","pr.target"]}
execute as @e[tag=loki6,tag=pr.target] at @s run summon text_display ^0.053 ^-0.023 ^0.0625 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.75f,0.8f]},text:'[{"text":"₆","color":"black","bold":false}]',background:0,Tags:["loki","loki6","lokik","pr.target"]}
execute as @e[tag=loki7,tag=pr.target] at @s run summon text_display ^0.053 ^-0.023 ^0.0625 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.75f,0.8f]},text:'[{"text":"₇","color":"black","bold":false}]',background:0,Tags:["loki","loki7","lokik","pr.target"]}
execute as @e[tag=loki8,tag=pr.target] at @s run summon text_display ^0.053 ^-0.023 ^0.0625 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.75f,0.8f]},text:'[{"text":"₈","color":"black","bold":false}]',background:0,Tags:["loki","loki8","lokik","pr.target"]}
execute as @e[tag=loki9,tag=pr.target] at @s run summon text_display ^0.053 ^-0.023 ^0.0625 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.75f,0.8f]},text:'[{"text":"₉","color":"black","bold":false}]',background:0,Tags:["loki","loki9","lokik","pr.target"]}
execute as @e[tag=lokix,tag=pr.target] at @s run summon text_display ^0.052 ^-0.041 ^0.0625 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.75f,0.8f]},text:'[{"text":"x","color":"dark_red","bold":false}]',background:0,Tags:["loki","lokix","lokik","pr.target"]}
execute as @e[tag=loki0,tag=pr.target] at @s run summon text_display ^0.053 ^-0.023 ^0.0625 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.75f,0.8f]},text:'[{"text":"₀","color":"black","bold":false}]',background:0,Tags:["loki","loki0","lokik","pr.target"]}
execute as @e[tag=lokiv,tag=pr.target] at @s run summon text_display ^0.052 ^-0.041 ^0.0625 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.75f,0.8f]},text:'[{"text":"v","color":"dark_green","bold":false}]',background:0,Tags:["loki","lokiv","lokik","pr.target"]}


#black back
execute as @e[tag=lokitemp,tag=pr.target] at @s run summon block_display ^0.21875 ^0.3125 ^-0.031 {shadow_radius:0f,width:0.2f,height:0.2f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.01f]},block_state:{Name:"minecraft:black_concrete"},Tags:["loki","lokid","pr.target"]}
execute as @e[tag=lokitemp,tag=pr.target] at @s run summon block_display ^0.03125 ^0.3125 ^-0.031 {shadow_radius:0f,width:0.2f,height:0.2f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.01f]},block_state:{Name:"minecraft:black_concrete"},Tags:["loki","lokic","pr.target"]}
execute as @e[tag=lokitemp,tag=pr.target] at @s run summon block_display ^-0.15625 ^0.3125 ^-0.031 {shadow_radius:0f,width:0.2f,height:0.2f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.01f]},block_state:{Name:"minecraft:black_concrete"},Tags:["loki","lokib","pr.target"]}
execute as @e[tag=lokitemp,tag=pr.target] at @s run summon block_display ^-0.34375 ^0.3125 ^-0.031 {shadow_radius:0f,width:0.2f,height:0.2f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.01f]},block_state:{Name:"minecraft:black_concrete"},Tags:["loki","lokia","pr.target"]}

#show code
execute as @e[tag=lokia,tag=pr.target] at @s run summon text_display ^0.055 ^-0.02 ^0.01 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:'[{"text":"0","color":"green","bold":false}]',background:0,Tags:["loki","lokiaa","pr.target"]}
execute as @e[tag=lokib,tag=pr.target] at @s run summon text_display ^0.055 ^-0.02 ^0.01 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:'[{"text":"0","color":"green","bold":false}]',background:0,Tags:["loki","lokibb","pr.target"]}
execute as @e[tag=lokic,tag=pr.target] at @s run summon text_display ^0.055 ^-0.02 ^0.01 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:'[{"text":"0","color":"green","bold":false}]',background:0,Tags:["loki","lokicc","pr.target"]}
execute as @e[tag=lokid,tag=pr.target] at @s run summon text_display ^0.055 ^-0.02 ^0.01 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:'[{"text":"0","color":"green","bold":false}]',background:0,Tags:["loki","lokidd","pr.target"]}

#goal
summon marker ~-2 ~5 ~-13 {Tags:["lokig1","loki","pr.target"]}
summon marker ~-1 ~5 ~-13 {Tags:["lokig2","loki","pr.target"]}
summon marker ~ ~5 ~-13 {Tags:["lokig3","loki","pr.target"]}
summon marker ~1 ~5 ~-13 {Tags:["lokig4","loki","pr.target"]}
summon marker ~2 ~5 ~-13 {Tags:["lokig5","loki","pr.target"]}

#scoreboard

scoreboard objectives add lokicode dummy
scoreboard players set lokia lokicode 0
scoreboard players set lokib lokicode 0
scoreboard players set lokic lokicode 0
scoreboard players set lokid lokicode 0
scoreboard players set 10 lokicode 10
scoreboard players set correct lokicode 0
scoreboard players set goal lokicode 0
scoreboard players set @e[tag=lokik] lokicode 0

#load code
execute at @e[tag=lokitemp,tag=pr.target] run function evilgodloki:answer

kill @e[tag=lokitemp,tag=pr.target]

summon interaction ~ ~9 ~16 {Tags:["lokibarr","pr.target"]}
summon interaction ~6.5 ~8 ~21.5 {width:4.1f,height:3f,Tags:["lokibarr","pr.target"]}
summon painting ~ ~8 ~12 {facing:2b,Invulnerable:1b,Tags:["loki","pr.target"],variant:"minecraft:wanderer"}
summon text_display ~ ~3.3 ~-11.49 {Tags:["loki","pr.target"],text:'{"text":"Find at least 5 sets of codes hidden in this building.","color":"dark_red","bold":true}',background:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.65f,0.65f,0.65f]}}
summon text_display ~ ~2 ~-39 {view_range:0.2f,Tags:["loki","pr.target"],text:'[{"text":"【EXIT】\\n\\n ","color":"gold","bold":true},{"text":"Congratulations! \\n\\n","color":"dark_green","bold":true},{"text":"Did you find all 17 codes?","color":"dark_blue","bold":true}]',background:0}
summon text_display ~-0.02 ~2.02 ~-38.9999 {view_range:0.2f,Tags:["loki","pr.target"],text:'[{"text":"【EXIT】\\n\\n ","color":"yellow","bold":true},{"text":"Congratulations! \\n\\n","color":"green","bold":true},{"text":"Did you find all 17 codes?","color":"blue","bold":true}]',background:0}
setblock ~-15 ~-1 ~-9 redstone_torch

#puzzle
summon glow_item_frame ~-14 ~8 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_slab",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-14 ~9 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_slab",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-14 ~10 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_stairs",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-15 ~8 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_stairs",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-15 ~9 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_stairs",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-15 ~10 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_slab",Count:1b},Tags:["loki","pr.target"]}

summon glow_item_frame ~-17 ~8 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_stairs",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-17 ~9 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_slab",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-17 ~10 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_stairs",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-18 ~8 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_stairs",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-18 ~9 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_slab",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-18 ~10 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_stairs",Count:1b},Tags:["loki","pr.target"]}

summon glow_item_frame ~-20 ~9 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_stairs",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-20 ~10 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_slab",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-21 ~8 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_slab",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-21 ~9 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_stairs",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-21 ~10 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_slab",Count:1b},Tags:["loki","pr.target"]}

summon glow_item_frame ~-23 ~8 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_stairs",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-23 ~9 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_stairs",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-23 ~10 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_stairs",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-24 ~8 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_stairs",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-24 ~9 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_stairs",Count:1b},Tags:["loki","pr.target"]}
summon glow_item_frame ~-24 ~10 ~1 {Facing:2b,ItemRotation:5b,Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:smooth_quartz_slab",Count:1b},Tags:["loki","pr.target"]}

#puzzle 2
summon text_display ~-17.5 ~4 ~3.5 {Rotation:[-90F,0F],Tags:["loki","pr.target"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"ZERO","color":"dark_gray","bold":true}',background:0}
summon text_display ~-17.5 ~4 ~6 {Rotation:[-90F,0F],Tags:["loki","pr.target"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"ONE","color":"dark_gray","bold":true}',background:0}
summon text_display ~-17.5 ~4 ~8.5 {Rotation:[-90F,0F],Tags:["loki","pr.target"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"TWO","color":"dark_gray","bold":true}',background:0}
summon text_display ~-17.5 ~4 ~11.5 {Rotation:[-90F,0F],Tags:["loki","pr.target"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"THREE","color":"dark_gray","bold":true}',background:0}
summon text_display ~-17.5 ~4 ~14.5 {Rotation:[-90F,0F],Tags:["loki","pr.target"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"FOUR","color":"dark_gray","bold":true}',background:0}
summon text_display ~-17.5 ~4 ~17.5 {Rotation:[-90F,0F],Tags:["loki","pr.target"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"FIVE","color":"dark_gray","bold":true}',background:0}
summon text_display ~-17.5 ~4 ~20.5 {Rotation:[-90F,0F],Tags:["loki","pr.target"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"SIX","color":"dark_gray","bold":true}',background:0}
summon text_display ~-17.5 ~4 ~23.5 {Rotation:[-90F,0F],Tags:["loki","pr.target"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"SEVEN","color":"dark_gray","bold":true}',background:0}
summon text_display ~-17.5 ~4 ~26.5 {Rotation:[-90F,0F],Tags:["loki","pr.target"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"EIGHT","color":"dark_gray","bold":true}',background:0}
summon text_display ~-17.5 ~4 ~29.5 {Rotation:[-90F,0F],Tags:["loki","pr.target"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},text:'{"text":"NINE","color":"dark_gray","bold":true}',background:0}