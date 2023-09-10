scoreboard players add fan rko.particle 1

# Right #
execute positioned ~16.5 ~20 ~20.5 run function rko:particle/fan/launcher
execute positioned ~24.5 ~48 ~28.5 run function rko:particle/fan/launcher
execute positioned ~21 ~69 ~-1 run function rko:particle/fan/launcher

# Left #
execute positioned ~-18.5 ~20 ~20.5 run function rko:particle/fan/launcher
execute positioned ~-26.5 ~48 ~28.5 run function rko:particle/fan/launcher
execute positioned ~-23 ~69 ~-1 run function rko:particle/fan/launcher

# Pipe #
execute positioned ~-4 ~108.5 ~10 run function rko:particle/fan/pipe

execute if score fan rko.particle matches 16.. run scoreboard players set fan rko.particle 0