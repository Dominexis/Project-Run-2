execute if score #successcount kello.value matches 0 unless block ~ ~ ~-1 #kello:generic/air align xyz positioned ~.5 ~.5 ~.5 rotated -90 0 run function kello:debug/decal/util/spawn/verify/main
execute if score #successcount kello.value matches 0 unless block ~ ~ ~01 #kello:generic/air align xyz positioned ~.5 ~.5 ~.5 rotated 90 00 run function kello:debug/decal/util/spawn/verify/main
execute if score #successcount kello.value matches 0 unless block ~-1 ~ ~ #kello:generic/air align xyz positioned ~.5 ~.5 ~.5 rotated 180 0 run function kello:debug/decal/util/spawn/verify/main
execute if score #successcount kello.value matches 0 unless block ~01 ~ ~ #kello:generic/air align xyz positioned ~.5 ~.5 ~.5 rotated 0 000 run function kello:debug/decal/util/spawn/verify/main
# execute if score #successcount kello.value matches 2.. run tellraw @p {"text":"[AncientApparatus] it looks like the decal detects a corner! remove the decal if its producing an unwanted results"}
return 1