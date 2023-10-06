# Boost Pads
execute positioned ~-31 ~-10 ~-13 run function inquognito:logic/plot/boost_pads/tick
execute positioned ~-30 ~-10 ~-3 run function inquognito:logic/plot/boost_pads/tick

# Retinal Scanner
execute positioned ~-9 ~2 ~-14 if entity @s[distance=..3] run function inquognito:logic/clearance/boss

# Boss Start
execute if score @s inquognito.floor matches -1 positioned ~-6 ~-20 ~-25 if entity @s[dx=2,dy=0,dz=2] run function inquognito:logic/plot/boss/start
