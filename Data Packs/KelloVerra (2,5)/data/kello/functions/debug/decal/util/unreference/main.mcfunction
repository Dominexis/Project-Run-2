scoreboard players set #successcount kello.value 0
scoreboard players set #total kello.value 0
execute as @e[type=item_display,tag=kello.decal.selected,tag=kello.decal.controlled] run function kello:debug/decal/util/unreference/verify

execute if score #successcount kello.value >= #total kello.value run tellraw @p {"text":"[AncientApparatus] Unreferencing successful, selected decals had been safely removed","color":"gold"}
execute if score #successcount kello.value < #total kello.value run tellraw @p {"text":"[AncientApparatus] Not all Unreferencing successful (Maybe some of them have been unreferenced?), selected decals had been safely removed","color":"gold"}