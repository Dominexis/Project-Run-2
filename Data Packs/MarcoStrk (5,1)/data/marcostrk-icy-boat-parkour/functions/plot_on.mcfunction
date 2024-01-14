# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players
scoreboard objectives add marcostrk-icy-boat-parkour-inside_boat dummy
scoreboard objectives add marcostrk-icy-boat-parkour-checkpoint-timer dummy
scoreboard objectives add marcostrk-icy-boat-parkour-died dummy
scoreboard objectives add marcostrk-icy-boat-parkour-game-time minecraft.custom:play_time
scoreboard objectives add marcostrk-icy-boat-parkour-tmp dummy
scoreboard objectives add marcostrk-icy-boat-parkour-20 dummy

summon minecraft:marker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["marcostrk-icy-boat-parkour-Center"]}
summon minecraft:marker ~-25 ~17 ~-35 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["marcostrk-icy-boat-parkour-Jump"]}
summon minecraft:marker ~33 ~22 ~-14 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["marcostrk-icy-boat-parkour-Jump"]}
summon minecraft:marker ~30 ~26 ~-16 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["marcostrk-icy-boat-parkour-NoGravity"]}
summon minecraft:marker ~33 ~52 ~13 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["marcostrk-icy-boat-parkour-Jump"]}
summon minecraft:marker ~33 ~57 ~29 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["marcostrk-icy-boat-parkour-Jump"]}
summon minecraft:marker ~-11 ~56 ~-15 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["marcostrk-icy-boat-parkour-Jump"]}
summon minecraft:marker ~5 ~61 ~-13 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["marcostrk-icy-boat-parkour-Jump"]}
summon minecraft:marker ~37 ~66 ~-1 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["marcostrk-icy-boat-parkour-Finish"]}















return 1