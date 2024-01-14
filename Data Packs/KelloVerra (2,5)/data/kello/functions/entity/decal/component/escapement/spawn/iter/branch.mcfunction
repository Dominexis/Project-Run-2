
scoreboard players set #boolean kello.value 0

execute if block ~ ~ ~ minecraft:chain positioned ~ ~.5 ~ summon minecraft:item_display run function kello:entity/decal/component/escapement/spawn/iter/leaf/chain

execute if block ~ ~ ~ minecraft:jungle_fence align xyz positioned ~.5 ~.5 ~.5 summon minecraft:item_display run function kello:entity/decal/component/escapement/spawn/iter/leaf/escapement

execute if score #boolean kello.value matches 1 run function kello:entity/decal/component/escapement/spawn/iter/trunk
return 1