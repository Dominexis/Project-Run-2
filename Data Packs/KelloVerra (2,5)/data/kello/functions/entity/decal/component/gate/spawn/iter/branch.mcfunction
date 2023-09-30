
scoreboard players set #boolean kello.value 0

execute if block ~ ~ ~ warped_hyphae align xyz positioned ~.5 ~.5 ~.5 summon item_display run function kello:entity/decal/component/gate_0/spawn/iter/leaf/gate

execute if score #boolean kello.value matches 1 run function kello:entity/decal/component/gate_0/spawn/iter/trunk