
scoreboard players set #boolean kello.value 0

execute if block ~ ~ ~ chain positioned ~ ~.5 ~ summon item_display run function kello:entity/decal/component/chain_platform/spawn/iter/leaf/chain

execute if block ~ ~ ~ stripped_jungle_log positioned ~ ~.5 ~ summon item_display run function kello:entity/decal/component/chain_platform/spawn/iter/leaf/log
#execute if block ~ ~ ~ stripped_jungle_log positioned ~ ~.5 ~ summon item_display run function kello:entity/decal/component/chain_platform/spawn/iter/leaf/log/visual

execute if block ~ ~ ~ jungle_planks align xyz positioned ~.5 ~.5 ~.5 summon item_display run function kello:entity/decal/component/chain_platform/spawn/iter/leaf/plank

execute if score #boolean kello.value matches 1 run function kello:entity/decal/component/chain_platform/spawn/iter/trunk