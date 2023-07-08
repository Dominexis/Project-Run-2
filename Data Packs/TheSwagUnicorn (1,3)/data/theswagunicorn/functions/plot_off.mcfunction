scoreboard players set tp1 TimerForSwag 0
scoreboard players set Conveyor1 TimerForSwag 0
scoreboard players set Conveyor2 TimerForSwag 0

setblock ~-7 ~11 ~-17 air
setblock ~-8 ~8 ~-10 air
fill ~-23 ~1 ~23 ~-23 ~5 ~29 lever[powered=false,facing=east] replace minecraft:lever[powered=true]

kill @e[type=marker,tag=pr.target,tag=Conveyor1]
kill @e[type=marker,tag=pr.target,tag=Conveyor2]
kill @e[type=marker,tag=pr.target,tag=Swag_Misc_Explosion]

kill @e[type=creeper,tag=JeepersCreepers,tag=pr.target]