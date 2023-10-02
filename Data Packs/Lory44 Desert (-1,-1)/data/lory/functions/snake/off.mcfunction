
scoreboard players set $snake_timer.ticks lory.var 7
scoreboard players operation $snake_timer.sec lory.var = $snake_lenght lory.var
scoreboard players remove $snake_timer.sec lory.var 1

scoreboard players operation $snake_timer lory.var = $snake_timer.max lory.var

execute as @e[type=marker,distance=..32,tag=lory.snake_part] run function lory:snake/tick
