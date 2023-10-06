
# execute positioned ~8.5 ~5 ~11.5 if block ~ ~ ~ minecraft:oak_pressure_plate[powered=true] unless score $snake_timer lory.var matches 0.. unless score $snake_timer lory.var <= $max_snake_timer lory.var run function lory:snake/start
execute positioned ~8.5 ~5 ~11.5 if block ~ ~ ~ minecraft:oak_pressure_plate[powered=true] unless score $snake_timer lory.var matches 0.. run function lory:snake/start

# execute if score $snake_timer lory.var matches 0.. if score $snake_timer lory.var <= $snake_timer.max lory.var run function lory:snake/timer
execute if score $snake_timer lory.var matches 0.. run function lory:snake/timer