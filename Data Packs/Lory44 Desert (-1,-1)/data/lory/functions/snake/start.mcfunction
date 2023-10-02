
scoreboard players set $snake_timer.ticks lory.var 0
scoreboard players set $snake_timer.sec lory.var 0
scoreboard players set $snake_timer lory.var 2

particle happy_villager ~ ~ ~ 0.20 0.00001 0.20 0 100
scoreboard players set $snake_timer lory.snake_id 0
playsound minecraft:block.note_block.pling master @a[tag=pr.target] ~ ~ ~ 1 1
