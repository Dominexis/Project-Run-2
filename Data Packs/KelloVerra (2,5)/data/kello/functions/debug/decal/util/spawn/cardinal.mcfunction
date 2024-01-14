execute if entity @p[y_rotation=135..-135] align xyz positioned ~.5 ~ ~.5 rotated 180 000 run function kello:debug/decal/util/spawn/verify/main
execute if entity @p[y_rotation=-45..45] align xyz positioned ~.5 ~ ~.5 rotated 000 000 run function kello:debug/decal/util/spawn/verify/main
execute if entity @p[y_rotation=45..135] align xyz positioned ~.5 ~ ~.5 rotated 90 0000 run function kello:debug/decal/util/spawn/verify/main
execute if entity @p[y_rotation=-135..-45] align xyz positioned ~.5 ~ ~.5 rotated -90 000 run function kello:debug/decal/util/spawn/verify/main
return 1