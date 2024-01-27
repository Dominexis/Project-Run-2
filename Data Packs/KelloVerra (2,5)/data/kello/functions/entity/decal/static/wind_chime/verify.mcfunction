scoreboard players set #input pr.value 3
function pr:generic/rng/lcg

scoreboard players operation #rand_variant kello.value = #output pr.value

execute if score #rand_variant kello.value matches 0 summon minecraft:item_display run function kello:entity/decal/static/wind_chime/0
execute if score #rand_variant kello.value matches 1 summon minecraft:item_display run function kello:entity/decal/static/wind_chime/1
execute if score #rand_variant kello.value matches 2 summon minecraft:item_display run function kello:entity/decal/static/wind_chime/2
return 1