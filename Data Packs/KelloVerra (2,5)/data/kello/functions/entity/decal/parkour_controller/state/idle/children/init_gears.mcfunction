execute if entity @s[tag=kello.entity.type.small] run fill ~ ~ ~ ~ ~-2 ~ minecraft:barrier replace minecraft:air
execute if entity @s[tag=kello.entity.type.large] run fill ~-1 ~ ~-1 ~1 ~-2 ~1 minecraft:barrier replace minecraft:air

execute if entity @s[tag=kello.entity.type.small] positioned ~ ~.05 ~ run function kello:entity/groundicator/small/spawn/main
execute if entity @s[tag=kello.entity.type.large] positioned ~ ~.05 ~ run function kello:entity/groundicator/large/spawn/main

tag @s remove kello.empty
return 1