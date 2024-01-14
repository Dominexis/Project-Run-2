
scoreboard players add $snake_timer.ticks lory.var 1
execute if score $snake_timer.ticks lory.var matches 6.. run function lory:snake/timer/second

return 1