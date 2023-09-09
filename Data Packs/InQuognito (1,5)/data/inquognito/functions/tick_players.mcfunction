function inquognito:logic/tick/abilities

function inquognito:logic/tick/pickups

# Start
execute positioned ~-2 ~49 ~-36 if entity @s[dx=4,dy=4,scores={inquognito.clearance=-1}] run function inquognito:logic/start

# Energy Cell Clearance
execute if score @s inquognito.clearance.energy matches 1.. at @s run function inquognito:logic/clearance/energy

# Boost Pads
execute positioned ~-31 ~-10 ~-13 run function inquognito:logic/plot/boost_pads/tick
execute positioned ~-30 ~-10 ~-3 run function inquognito:logic/plot/boost_pads/tick

# Bounce Pad
execute positioned ~1 ~57 ~-26 if entity @s[dx=4,dy=0,dz=4] run function inquognito:logic/plot/bounce_pad

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
execute if score @s inquognito.transmission matches 999 run function inquognito:logic/transmissions/perfection

scoreboard players enable @s inquognito.transmission

scoreboard players reset @s inquognito.jump
