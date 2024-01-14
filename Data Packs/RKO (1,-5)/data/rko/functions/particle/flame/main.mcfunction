execute if score flame_state rko.time matches 14..28 positioned ~14 ~113.5 ~27 run function rko:particle/flame/idle
execute if score flame_state rko.time matches 14..28 positioned ~-14 ~113.5 ~27 run function rko:particle/flame/idle

execute if score flame_state rko.time matches 2..12 positioned ~4 ~112.5 ~-1 run function rko:particle/flame/idle
execute if score flame_state rko.time matches 2..14 positioned ~-4 ~112.5 ~-4 run function rko:particle/flame/idle
execute if score flame_state rko.time matches 2..16 positioned ~4 ~112.5 ~-7 run function rko:particle/flame/idle
execute if score flame_state rko.time matches 2..16 positioned ~-4 ~112.5 ~-12 run function rko:particle/flame/idle

execute if score flame_state rko.time matches 6..12 positioned ~14 ~113.5 ~29 run function rko:particle/flame/throw_x
execute if score flame_state rko.time matches 6..12 positioned ~-14 ~113.5 ~29 run function rko:particle/flame/throw_x

execute if score flame_state rko.time matches 18..24 positioned ~2 ~112.5 ~-1 run function rko:particle/flame/throw_z
execute if score flame_state rko.time matches 20..26 positioned ~-2 ~112.5 ~-4 run function rko:particle/flame/throw_z
execute if score flame_state rko.time matches 22..28 positioned ~2 ~112.5 ~-7 run function rko:particle/flame/throw_z
execute if score flame_state rko.time matches 22..28 positioned ~-2 ~112.5 ~-12 run function rko:particle/flame/throw_z
return 1