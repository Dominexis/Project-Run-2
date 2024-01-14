execute positioned as @s store success score #boolean kello.value if entity @e[type=minecraft:item_display,distance=..8,tag=aj.cogwheel.root]

execute unless score #boolean kello.value matches 0 run return 0

execute if entity @s[tag=kello.entity.type.large] run function kello:entity/thrown/large_cog/state/fixed/as_detach
execute if entity @s[tag=kello.entity.type.small] run function kello:entity/thrown/small_cog/state/fixed/as_detach
return 1