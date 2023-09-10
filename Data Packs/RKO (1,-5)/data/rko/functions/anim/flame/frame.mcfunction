scoreboard players add flame_state rko.time 1
scoreboard players set flame rko.time 0

execute if score flame_state rko.time matches 2 positioned ~14 ~113.5 ~27 run function rko:anim/flame/prep
execute if score flame_state rko.time matches 2 positioned ~-14 ~113.5 ~27 run function rko:anim/flame/prep

execute if score flame_state rko.time matches 6 run function rko:anim/flame/thrower/single

execute if score flame_state rko.time matches 14 run function rko:anim/flame/retract/single

execute if score flame_state rko.time matches 14 positioned ~4 ~112.5 ~-1 run function rko:anim/flame/prep
execute if score flame_state rko.time matches 16 positioned ~-4 ~112.5 ~-4 run function rko:anim/flame/prep
execute if score flame_state rko.time matches 18 positioned ~4 ~112.5 ~-7 run function rko:anim/flame/prep
execute if score flame_state rko.time matches 18 positioned ~-4 ~112.5 ~-12 run function rko:anim/flame/prep

execute if score flame_state rko.time matches 18 positioned ~6 ~112.5 ~-1 as @e[tag=pr.target,tag=rko_ft2,sort=arbitrary] run function rko:anim/flame/thrower/run
execute if score flame_state rko.time matches 20 positioned ~-6 ~112.5 ~-4 as @e[tag=pr.target,tag=rko_ft3,sort=arbitrary] run function rko:anim/flame/thrower/run
execute if score flame_state rko.time matches 22 run function rko:anim/flame/thrower/last

execute if score flame_state rko.time matches 26 positioned ~6 ~112.5 ~-1 as @e[tag=pr.target,tag=rko_ft2,sort=arbitrary] run function rko:anim/flame/retract/run
execute if score flame_state rko.time matches 28 positioned ~-6 ~112.5 ~-4 as @e[tag=pr.target,tag=rko_ft3,sort=arbitrary] run function rko:anim/flame/retract/run
execute if score flame_state rko.time matches 30 run function rko:anim/flame/retract/last

execute if score flame_state rko.time matches 30.. run scoreboard players set flame_state rko.time 0