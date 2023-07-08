setblock ~-7 ~11 ~-17 redstone_block
setblock ~-7 ~11 ~-17 black_concrete
setblock ~-8 ~8 ~-10 redstone_block

scoreboard objectives add TimerForSwag dummy
scoreboard players set 48 TimerForSwag 48
scoreboard players set 16 TimerForSwag 16
scoreboard players set 8 TimerForSwag 8

scoreboard players set tp1 TimerForSwag 6
scoreboard players set Conveyor1 TimerForSwag 0
scoreboard players set Conveyor2 TimerForSwag 8
scoreboard players set MiscExplosion TimerForSwag 0

summon marker ~10 ~2 ~20 {Tags:["pr.target","Conveyor1"]}
summon marker ~22 ~3 ~20 {Tags:["pr.target","Conveyor2"]}
summon marker ~-11 ~4 ~0 {Tags:["pr.target","Swag_Misc_Explosion"]}
summon marker ~-31 ~7 ~24 {Tags:["pr.target","Swag_Misc_Explosion"]}
summon marker ~-18.0 ~7.5 ~-13.25 {Tags:["pr.target","Swag_Misc_Explosion"]}