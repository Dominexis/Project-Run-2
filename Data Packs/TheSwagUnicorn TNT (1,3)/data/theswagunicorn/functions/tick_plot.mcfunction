execute as @e[type=minecraft:creeper,tag=JeepersCreepers,tag=pr.target] at @s unless block ~ ~ ~ minecraft:air run kill @s
execute as @a[tag=pr.target] at @s if block ~ ~-8 ~ minecraft:purpur_block run item replace entity @s hotbar.0 with minecraft:fire_charge
execute as @a[tag=pr.target] at @s unless block ~ ~-8 ~ minecraft:purpur_block run clear @s minecraft:fire_charge

scoreboard players add tp1 TimerForSwag 1
execute if score tp1 TimerForSwag >= 8 TimerForSwag as @e[type=minecraft:creeper,tag=JeepersCreepers,tag=pr.target] at @s run tp @s ^ ^ ^1
execute if score tp1 TimerForSwag >= 8 TimerForSwag run scoreboard players set tp1 TimerForSwag 0

scoreboard players add Conveyor1 TimerForSwag 1
execute if score Conveyor1 TimerForSwag >= 16 TimerForSwag as @e[type=minecraft:marker,tag=Conveyor1,tag=pr.target] at @s run clone ~2 ~-10 ~-2 ~4 ~-12 ~6 ~ ~ ~
execute if score Conveyor1 TimerForSwag >= 16 TimerForSwag as @e[type=minecraft:marker,tag=Conveyor2,tag=pr.target] at @s run clone ~-2 ~-11 ~-2 ~-4 ~-13 ~6 ~ ~-1 ~
execute if score Conveyor1 TimerForSwag >= 16 TimerForSwag as @e[type=minecraft:marker,tag=Conveyor1,tag=pr.target] at @s run summon minecraft:creeper ~1 ~3 ~ {NoAI:1b,Silent:1b,Tags:["JeepersCreepers","pr.target"],DeathLootTable:""}
execute if score Conveyor1 TimerForSwag >= 16 TimerForSwag run scoreboard players set Conveyor1 TimerForSwag 0

scoreboard players add Conveyor2 TimerForSwag 1
execute if score Conveyor2 TimerForSwag >= 16 TimerForSwag as @e[type=minecraft:marker,tag=Conveyor1,tag=pr.target] at @s run clone ~8 ~-10 ~-2 ~10 ~-12 ~6 ~ ~ ~
execute if score Conveyor2 TimerForSwag >= 16 TimerForSwag as @e[type=minecraft:marker,tag=Conveyor2,tag=pr.target] at @s run clone ~-8 ~-11 ~-2 ~-10 ~-13 ~6 ~ ~-1 ~
execute if score Conveyor2 TimerForSwag >= 16 TimerForSwag as @e[type=minecraft:marker,tag=Conveyor2,tag=pr.target] at @s run summon minecraft:creeper ~1 ~2 ~8 {NoAI:1b,Silent:1b,Tags:["JeepersCreepers","pr.target"],Rotation:[180.0f,0.0f],DeathLootTable:""}
execute if score Conveyor2 TimerForSwag >= 16 TimerForSwag run scoreboard players set Conveyor2 TimerForSwag 0

scoreboard players add MiscExplosion TimerForSwag 1
execute if score MiscExplosion TimerForSwag >= 48 TimerForSwag as @e[type=minecraft:marker,tag=Swag_Misc_Explosion,tag=pr.target] at @s run summon minecraft:creeper ~ ~ ~ {Fuse:0s,Silent:1b,DeathLootTable:""}
execute if score MiscExplosion TimerForSwag >= 48 TimerForSwag run scoreboard players set MiscExplosion TimerForSwag 0

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:gunpowder"}}] run kill @s
return 1