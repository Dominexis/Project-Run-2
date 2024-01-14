scoreboard players add box_state rko.time 1
scoreboard players set box rko.time 0

# Left #
execute if score box_state rko.time matches 1 positioned ~-14 ~51 ~1 run function rko:anim/box/spawn/1
execute if score box_state rko.time matches 3 positioned ~-14 ~51 ~2 run function rko:anim/box/spawn/3
execute if score box_state rko.time matches 5 positioned ~-14 ~51 ~2 run function rko:anim/box/spawn/5
execute if score box_state rko.time matches 2 positioned ~-14 ~51 ~-2 run function rko:anim/box/spawn/2
execute if score box_state rko.time matches 4 positioned ~-14 ~51 ~-1 run function rko:anim/box/spawn/4
execute if score box_state rko.time matches 6 positioned ~-14 ~51 ~-2 run function rko:anim/box/spawn/6

tag @e[tag=rko_box_am,tag=!pr.target,sort=arbitrary] add rko_box_rev
tag @e[tag=rko_box_shulker,tag=!pr.target,sort=arbitrary] add rko_box_rev

# Right #
execute if score box_state rko.time matches 1 positioned ~14 ~51 ~1 run function rko:anim/box/spawn/1
execute if score box_state rko.time matches 3 positioned ~14 ~51 ~2 run function rko:anim/box/spawn/3
execute if score box_state rko.time matches 5 positioned ~14 ~51 ~2 run function rko:anim/box/spawn/5
execute if score box_state rko.time matches 2 positioned ~14 ~51 ~-2 run function rko:anim/box/spawn/2
execute if score box_state rko.time matches 4 positioned ~14 ~51 ~-1 run function rko:anim/box/spawn/4
execute if score box_state rko.time matches 6 positioned ~14 ~51 ~-2 run function rko:anim/box/spawn/6

execute if score box_state rko.time matches 6.. run scoreboard players set box_state rko.time 0
return 1