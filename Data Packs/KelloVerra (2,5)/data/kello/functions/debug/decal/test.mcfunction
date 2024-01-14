execute if block ~ ~ ~ minecraft:lightning_rod[facing=up] align xyz positioned ~.5 ~.5 ~1 rotated 00 90 run function kello:entity/decal/decwheel/spawn/main
execute if block ~ ~ ~ minecraft:lightning_rod[facing=north] align xyz positioned ~.5 ~ ~.5 rotated 180 00 run function kello:entity/decal/decwheel/spawn/main
execute if block ~ ~ ~ minecraft:lightning_rod[facing=south] align xyz positioned ~.5 ~ ~.5 rotated 000 00 run function kello:entity/decal/decwheel/spawn/main
execute if block ~ ~ ~ minecraft:lightning_rod[facing=west] align xyz positioned ~.5 ~ ~.5 rotated 90 000 run function kello:entity/decal/decwheel/spawn/main
execute if block ~ ~ ~ minecraft:lightning_rod[facing=east] align xyz positioned ~.5 ~ ~.5 rotated -90 00 run function kello:entity/decal/decwheel/spawn/main
execute if block ~ ~ ~ minecraft:lightning_rod[facing=down] align xyz positioned ~.5 ~.5 ~ rotated 00 -90 run function kello:entity/decal/decwheel/spawn/main
return 1