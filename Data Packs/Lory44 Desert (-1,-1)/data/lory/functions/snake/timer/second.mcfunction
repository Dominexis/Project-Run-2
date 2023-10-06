
scoreboard players add $snake_timer.sec lory.var 1

scoreboard players operation $snake_timer.tmp lory.var = $snake_timer.sec lory.var
scoreboard players operation $snake_timer.tmp lory.var %= $snake_rhythm lory.var

execute if score $snake_timer.tmp lory.var matches 1.. as @a[dx=20,dy=20,dz=20,tag=pr.target] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 3 0.5 1

execute unless score $snake_timer.tmp lory.var matches 1.. at @e[type=marker,distance=0..32,tag=lory.snake_part,tag=pr.target] run particle minecraft:flame ~ ~ ~ 0.0001 0.0001 0.0001 0 1 normal @a

execute unless score $snake_timer.tmp lory.var matches 1.. as @a[dx=20,dy=20,dz=20,tag=pr.target] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ 3 1 1 1
execute unless score $snake_timer.tmp lory.var matches 1.. as @e[type=marker,distance=..32,tag=lory.snake_part,tag=pr.target] at @s run function lory:snake/set

execute unless score $snake_timer.tmp lory.var matches 1.. run scoreboard players add $snake_timer lory.var 1

scoreboard players set $snake_timer.ticks lory.var 0

# execute if score $snake_timer lory.var > $snake_timer.max lory.var run scoreboard players set $snake_timer lory.var -1
