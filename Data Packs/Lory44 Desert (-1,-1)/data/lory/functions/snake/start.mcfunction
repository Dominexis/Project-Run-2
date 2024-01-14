
scoreboard players set $snake_timer.ticks lory.var 0
scoreboard players set $snake_timer.sec lory.var 0
scoreboard players set $snake_timer lory.var 2

particle minecraft:happy_villager ~ ~ ~ 0.20 0.00001 0.20 0 100
# scoreboard players set $snake_timer lory.snake_id 0
execute as @a[dx=20,dy=20,dz=20,tag=pr.target] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1

return 1