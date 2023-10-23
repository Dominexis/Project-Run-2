# Pre-TP
scoreboard players reset @s cobra2.flip1
scoreboard players reset @s cobra2.flip2
clear @s minecraft:netherite_boots
clear @s minecraft:iron_boots
stopsound @a[tag=pr.target] * minecraft:item.armor.equip_iron
stopsound @a[tag=pr.target] * minecraft:item.armor.equip_netherite
execute at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1.5 1.8

# TP
scoreboard players reset rcount cobra2.temp
execute at @s[tag=cobra2.down] run function cobra2:tp_recursive1
execute at @s[tag=cobra2.up] run function cobra2:tp_recursive2
execute at @s run tp @s ~ ~-2 ~
execute at @s[tag=cobra2.up] run tp @s ~ ~-1 ~

# Invert camera
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["pr.target","cobra2.m"]}
tp @e[tag=cobra2.m] @s
execute store result entity @e[tag=cobra2.m,limit=1] Rotation[1] float -1 run data get storage cobra2:data tag.Rotation[1]
tp @s @e[tag=cobra2.m,limit=1]
kill @e[tag=cobra2.m]
scoreboard players reset @s cobra2.ground

# Inside block fix
execute at @s if block ~ ~ ~ minecraft:chiseled_quartz_block run tp @s ~ ~1 ~

execute at @s run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1.8
