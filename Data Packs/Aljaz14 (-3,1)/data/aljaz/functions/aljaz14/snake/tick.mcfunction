function aljaz:aljaz14/snake/snake1/tick
execute if block ~15 ~-44 ~-16 minecraft:spruce_pressure_plate[powered=true] run tag @e[type=minecraft:armor_stand,tag=snake_1,tag=begin,tag=pr.target] add beginSnake



function aljaz:aljaz14/snake/snake2/tick
execute if block ~-28 ~-32 ~-11 minecraft:polished_blackstone_pressure_plate[powered=true] run tag @e[type=minecraft:armor_stand,tag=snake_2,tag=begin,tag=pr.target] add beginSnake


function aljaz:aljaz14/snake/snake3/tick
execute if block ~-9 ~3 ~12 minecraft:warped_pressure_plate[powered=true] run tag @e[type=minecraft:armor_stand,tag=snake_3,tag=begin,tag=pr.target] add beginSnake


function aljaz:aljaz14/snake/snake4/tick
execute if block ~-9 ~3 ~12 minecraft:warped_pressure_plate[powered=true] run tag @e[type=minecraft:armor_stand,tag=snake_4,tag=begin,tag=pr.target] add beginSnake






return 1