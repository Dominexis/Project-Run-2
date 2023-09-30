execute if block ^1 ^ ^ minecraft:stripped_warped_stem[axis=z] summon item_display run function kello:entity/decal/component/moving_platform/spawn/railer/z
execute if block ^1 ^ ^ minecraft:stripped_warped_stem[axis=x] summon item_display run function kello:entity/decal/component/moving_platform/spawn/railer/x

execute if block ~ ~1 ~ minecraft:stripped_warped_stem[axis=z] summon item_display run function kello:entity/decal/component/moving_platform/spawn/railer/dangle/z
execute if block ~ ~1 ~ minecraft:stripped_warped_stem[axis=x] summon item_display run function kello:entity/decal/component/moving_platform/spawn/railer/dangle/x

# execute if block ~ ~-1 ~ minecraft:stripped_warped_stem[axis=z] summon item_display run function kello:entity/decal/component/moving_platform/spawn/railer/extend/z
# execute if block ~ ~-1 ~ minecraft:stripped_warped_stem[axis=x] summon item_display run function kello:entity/decal/component/moving_platform/spawn/railer/extend/x