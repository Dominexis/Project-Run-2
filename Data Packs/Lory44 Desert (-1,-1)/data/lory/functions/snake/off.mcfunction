
scoreboard players set $snake_timer.ticks lory.var 7
scoreboard players operation $snake_timer.sec lory.var = $snake_length lory.var
scoreboard players remove $snake_timer.sec lory.var 1

# scoreboard players operation $snake_timer lory.var = $snake_timer.max lory.var
scoreboard players set $snake_timer lory.var -1

execute at @e[type=minecraft:marker,distance=..32,tag=lory.snake_part,tag=pr.target] run setblock ~ ~ ~ minecraft:air

return 1