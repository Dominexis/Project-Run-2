execute if entity @s[tag=kello.entity.type.small] positioned ~ ~.05 ~ run function kello:entity/placedicator/small/spawn/main
execute if entity @s[tag=kello.entity.type.large] positioned ~ ~.05 ~ run function kello:entity/placedicator/large/spawn/main

tag @s remove kello.empty
return 1