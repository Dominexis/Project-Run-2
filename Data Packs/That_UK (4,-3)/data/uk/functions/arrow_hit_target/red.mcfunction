execute on origin unless score @s uk_code matches 3 run scoreboard players set @s uk_code 0
execute on origin run scoreboard players set @s[scores={uk_code=3}] uk_code 4
execute at @s run particle explosion ~ ~ ~ 0.1 0.1 0.1 0 10
execute at @s run playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2
kill @s