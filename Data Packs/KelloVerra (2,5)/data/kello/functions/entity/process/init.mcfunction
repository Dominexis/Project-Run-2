# Missed ticks calculation (credit dominexis nexus) NOTE: MIGHT OBSOLETE :P

# execute unless score @s kello.ticks = @s kello.ticks run scoreboard players set @s kello.ticks -1
# execute if score @s kello.ticks matches -1 run scoreboard players operation @s kello.ticks += #global kello.ticks

# scoreboard players operation #missed_ticks kello.value = #global kello.ticks
# scoreboard players operation #missed_ticks kello.value -= @s kello.ticks
# execute if score #missed_ticks kello.value matches 5.. run scoreboard players set #missed_ticks kello.value 5
# execute if score #missed_ticks kello.value matches ..0 run scoreboard players set #missed_ticks kello.value 1
# scoreboard players operation @s kello.ticks = #global kello.ticks



# Tick entity

scoreboard players set #boolean kello.value 0

execute unless score @s kello.entity.tick_dist matches 1..128 run scoreboard players set #boolean kello.value 1
execute if score @s kello.entity.tick_dist matches 001..008 if entity @a[gamemode=!spectator,distance=..008,tag=pr.target] run scoreboard players set #boolean kello.value 1
execute if score @s kello.entity.tick_dist matches 009..016 if entity @a[gamemode=!spectator,distance=..016,tag=pr.target] run scoreboard players set #boolean kello.value 1
execute if score @s kello.entity.tick_dist matches 017..032 if entity @a[gamemode=!spectator,distance=..032,tag=pr.target] run scoreboard players set #boolean kello.value 1
execute if score @s kello.entity.tick_dist matches 031..064 if entity @a[gamemode=!spectator,distance=..064,tag=pr.target] run scoreboard players set #boolean kello.value 1
execute if score @s kello.entity.tick_dist matches 065..128 if entity @a[gamemode=!spectator,distance=..128,tag=pr.target] run scoreboard players set #boolean kello.value 1

execute if score #boolean kello.value matches 1 run function kello:entity/process/main
return 1