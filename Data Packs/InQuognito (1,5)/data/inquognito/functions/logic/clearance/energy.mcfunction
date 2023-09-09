scoreboard players remove @s inquognito.clearance.energy 1

scoreboard players operation #modulo inquognito.temp = @s inquognito.clearance.energy
scoreboard players operation #modulo inquognito.temp %= #20 pr.value

execute if score #modulo inquognito.temp matches 0 run playsound minecraft:ui.button.click player @s ~ ~ ~ 0.25 1.0

execute if score @s inquognito.clearance.energy matches 200 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.500
execute if score @s inquognito.clearance.energy matches 180 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.525
execute if score @s inquognito.clearance.energy matches 160 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.550
execute if score @s inquognito.clearance.energy matches 140 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.575
execute if score @s inquognito.clearance.energy matches 120 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.600

execute if score @s inquognito.clearance.energy matches 100 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.625
execute if score @s inquognito.clearance.energy matches 90 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.650

execute if score @s inquognito.clearance.energy matches 80 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.675
execute if score @s inquognito.clearance.energy matches 70 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.700

execute if score @s inquognito.clearance.energy matches 60 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.725
execute if score @s inquognito.clearance.energy matches 50 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.750

execute if score @s inquognito.clearance.energy matches 40 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.775
execute if score @s inquognito.clearance.energy matches 30 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.800

execute if score @s inquognito.clearance.energy matches 20 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.825
execute if score @s inquognito.clearance.energy matches 15 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.850
execute if score @s inquognito.clearance.energy matches 10 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.875
execute if score @s inquognito.clearance.energy matches 5 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.900

execute if score @s inquognito.clearance.energy matches 0 run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 0.5
