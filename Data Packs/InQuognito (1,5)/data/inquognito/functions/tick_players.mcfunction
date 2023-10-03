scoreboard players operation test inquognito.id = @s inquognito.id

function inquognito:logic/tick/abilities

function inquognito:logic/tick/pickups

execute if score @s inquognito.drop_item matches 1.. at @s run function inquognito:logic/drop_item

# Start
execute positioned ~-2 ~49 ~-36 if entity @s[dx=4,dy=4,scores={inquognito.clearance=-1}] run function inquognito:logic/start

execute if score @s inquognito.floor matches -99 run function inquognito:logic/tick/floor/boss
execute if score @s inquognito.floor matches -1 run function inquognito:logic/tick/floor/-1
execute if score @s inquognito.floor matches 0 run function inquognito:logic/tick/floor/0
execute if score @s inquognito.floor matches 99 run function inquognito:logic/tick/floor/escape

# Transmissions
execute if score @s inquognito.transmission.tick matches 1.. unless score @s inquognito.transmission = @s inquognito.transmission.current run function inquognito:logic/transmissions/reset

scoreboard players operation @s inquognito.transmission.current = @s inquognito.transmission

execute if score @s inquognito.transmission matches 1 run function inquognito:logic/transmissions/intro
execute if score @s inquognito.transmission matches 2 run function inquognito:logic/transmissions/clearance/1/1
execute if score @s inquognito.transmission matches 3 run function inquognito:logic/transmissions/clearance/1/2
execute if score @s inquognito.transmission matches 4 run function inquognito:logic/transmissions/clearance/1/3
execute if score @s inquognito.transmission matches 5 run function inquognito:logic/transmissions/gun/default
execute if score @s inquognito.transmission matches 6 run function inquognito:logic/transmissions/suit/mk2
execute if score @s inquognito.transmission matches 7 run function inquognito:logic/transmissions/suit/mk3
execute if score @s inquognito.transmission matches 8 run function inquognito:logic/transmissions/gun/frostbite
execute if score @s inquognito.transmission matches 9 run function inquognito:logic/transmissions/gun/nova
execute if score @s inquognito.transmission matches 10 run function inquognito:logic/transmissions/gun/trinity
execute if score @s inquognito.transmission matches 11 run function inquognito:logic/transmissions/night_vision_scope
execute if score @s inquognito.transmission matches 12 run function inquognito:logic/transmissions/clearance/frostbite/1
execute if score @s inquognito.transmission matches 14 run function inquognito:logic/transmissions/clearance/frostbite/3
execute if score @s inquognito.transmission matches 15 run function inquognito:logic/transmissions/clearance/energy
execute if score @s inquognito.transmission matches 16 run function inquognito:logic/transmissions/energy_cell
execute if score @s inquognito.transmission matches 17 run function inquognito:logic/transmissions/clearance/bounce_pad_room/1
execute if score @s inquognito.transmission matches 20 run function inquognito:logic/transmissions/clearance/bounce_pad_room/4
execute if score @s inquognito.transmission matches 21 run function inquognito:logic/transmissions/clearance/sewer
execute if score @s inquognito.transmission matches 22 run function inquognito:logic/transmissions/clearance/office/1
execute if score @s inquognito.transmission matches 24 run function inquognito:logic/transmissions/clearance/office/3
execute if score @s inquognito.transmission matches 25 run function inquognito:logic/transmissions/clearance/sector_4/1
execute if score @s inquognito.transmission matches 27 run function inquognito:logic/transmissions/clearance/sector_4/3

scoreboard players enable @s inquognito.transmission

scoreboard players reset @s inquognito.jump

# Attributes
attribute @s[scores={inquognito.health=6}] minecraft:generic.max_health base set 6.0
attribute @s[scores={inquognito.health=8}] minecraft:generic.max_health base set 8.0
attribute @s[scores={inquognito.health=10}] minecraft:generic.max_health base set 10.0
attribute @s[scores={inquognito.health=12}] minecraft:generic.max_health base set 12.0
attribute @s[scores={inquognito.health=14}] minecraft:generic.max_health base set 14.0
attribute @s[scores={inquognito.health=16}] minecraft:generic.max_health base set 16.0
attribute @s[scores={inquognito.health=18}] minecraft:generic.max_health base set 18.0
attribute @s[scores={inquognito.health=20}] minecraft:generic.max_health base set 20.0

attribute @s[scores={inquognito.suit=1}] minecraft:generic.armor base set 4.0
attribute @s[scores={inquognito.suit=2}] minecraft:generic.armor base set 8.0
attribute @s[scores={inquognito.suit=3}] minecraft:generic.armor base set 12.0
