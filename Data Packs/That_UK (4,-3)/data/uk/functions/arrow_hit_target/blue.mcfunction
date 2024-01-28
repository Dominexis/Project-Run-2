execute on origin unless score @s uk_code matches 2 run scoreboard players set @s uk_code 0
execute on origin run scoreboard players set @s[scores={uk_code=2}] uk_code 3
execute at @s run particle explosion ~ ~ ~ 0.1 0.1 0.1 0 10
execute at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2
kill @s