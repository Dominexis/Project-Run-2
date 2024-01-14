execute if block ~ ~-1 ~ minecraft:lightning_rod[facing=up] align xyz positioned ~.5 ~-.5 ~.5 rotated 00 -90 run function kello:debug/decal/util/spawn/verify/main
execute if block ~ ~ ~ minecraft:lightning_rod[facing=north] align xyz positioned ~.5 ~.5 ~.5 rotated 180 000 run function kello:debug/decal/util/spawn/verify/main
execute if block ~ ~ ~ minecraft:lightning_rod[facing=south] align xyz positioned ~.5 ~.5 ~.5 rotated 000 000 run function kello:debug/decal/util/spawn/verify/main
execute if block ~ ~ ~ minecraft:lightning_rod[facing=west] align xyz positioned ~.5 ~.5 ~.5 rotated 90 0000 run function kello:debug/decal/util/spawn/verify/main
execute if block ~ ~ ~ minecraft:lightning_rod[facing=east] align xyz positioned ~.5 ~.5 ~.5 rotated -90 000 run function kello:debug/decal/util/spawn/verify/main
execute if block ~ ~1 ~ minecraft:lightning_rod[facing=down] align xyz positioned ~.5 ~1.5 ~.5 rotated 000 90 run function kello:debug/decal/util/spawn/verify/main
return 1