scoreboard objectives add CantaloupeTimer dummy
scoreboard objectives add 290 dummy
scoreboard players set 290 290 290

summon marker ~8 ~1 ~1 {Tags:["pr.target","FireLeft"]}
summon marker ~-8 ~1 ~20 {Tags:["pr.target","FireRight"]}
summon marker ~-8 ~1 ~5 {Tags:["pr.target","FireRight"]}