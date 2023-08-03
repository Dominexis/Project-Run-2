function aljaz:aljaz14/snake/snake1/tick
execute if block ~15 ~-44 ~-16 spruce_pressure_plate[powered=true] run tag @e[type=armor_stand,tag=snake_1,tag=begin,tag=pr.target] add beginSnake
execute if entity @a[tag=pr.target] unless entity @e[type=armor_stand,tag=snake_1,tag=pr.target] run function aljaz:aljaz14/snake/snake1/summon



function aljaz:aljaz14/snake/snake2/tick
execute if block ~-28 ~-32 ~-11 polished_blackstone_pressure_plate[powered=true] run tag @e[type=armor_stand,tag=snake_2,tag=begin,tag=pr.target] add beginSnake
execute if entity @a[tag=pr.target] unless entity @e[type=armor_stand,tag=snake_2,tag=pr.target] run function aljaz:aljaz14/snake/snake2/summon


function aljaz:aljaz14/snake/snake3/tick
execute if block ~-15 ~3 ~13 warped_pressure_plate[powered=true] run tag @e[type=armor_stand,tag=snake_3,tag=begin,tag=pr.target] add beginSnake
execute if entity @a[tag=pr.target] unless entity @e[type=armor_stand,tag=snake_3,tag=pr.target] run function aljaz:aljaz14/snake/snake3/summon


function aljaz:aljaz14/snake/snake4/tick
execute if block ~-15 ~3 ~13 warped_pressure_plate[powered=true] run tag @e[type=armor_stand,tag=snake_4,tag=begin,tag=pr.target] add beginSnake
execute if entity @a[tag=pr.target] unless entity @e[type=armor_stand,tag=snake_4,tag=pr.target] run function aljaz:aljaz14/snake/snake4/summon





