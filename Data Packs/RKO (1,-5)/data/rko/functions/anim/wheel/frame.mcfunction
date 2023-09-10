scoreboard players add wheel_state rko.time 1
scoreboard players set wheel rko.time 0

# Right #
execute if score wheel_state rko.time matches 1 as @e[tag=pr.target,tag=rko_wheelr,sort=arbitrary] run data merge entity @s {transformation:{right_rotation:{angle:2.0944,axis:[0.0,0.0,1.0]}},start_interpolation:-1,interpolation_duration:100}
execute if score wheel_state rko.time matches 2 as @e[tag=pr.target,tag=rko_wheelr,sort=arbitrary] run data merge entity @s {transformation:{right_rotation:{angle:4.1888,axis:[0.0,0.0,1.0]}},start_interpolation:-1,interpolation_duration:100}
execute if score wheel_state rko.time matches 3 as @e[tag=pr.target,tag=rko_wheelr,sort=arbitrary] run data merge entity @s {transformation:{right_rotation:{angle:0.0,axis:[0.0,0.0,1.0]}},start_interpolation:-1,interpolation_duration:100}

# Left #
execute if score wheel_state rko.time matches 1 as @e[tag=pr.target,tag=rko_wheell,sort=arbitrary] run data merge entity @s {transformation:{right_rotation:{angle:2.0944,axis:[0.0,0.0,-1.0]}},start_interpolation:-1,interpolation_duration:100}
execute if score wheel_state rko.time matches 2 as @e[tag=pr.target,tag=rko_wheell,sort=arbitrary] run data merge entity @s {transformation:{right_rotation:{angle:4.1888,axis:[0.0,0.0,-1.0]}},start_interpolation:-1,interpolation_duration:100}
execute if score wheel_state rko.time matches 3 as @e[tag=pr.target,tag=rko_wheell,sort=arbitrary] run data merge entity @s {transformation:{right_rotation:{angle:0.0,axis:[0.0,0.0,-1.0]}},start_interpolation:-1,interpolation_duration:100}

execute if score wheel_state rko.time matches 3.. run scoreboard players set wheel_state rko.time 0