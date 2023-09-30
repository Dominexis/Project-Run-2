scoreboard players remove #iter kello.value 1

tp @s ~ ~ ~

execute if score #iter kello.value matches 1.. if block ^1 ^ ^ minecraft:stripped_warped_stem positioned ^1 ^ ^ run function kello:entity/decal/component/moving_platform/spawn/railer/iter