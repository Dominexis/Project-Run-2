# execute if score #level_creation_mode kello.value matches 1 run function kello:tick/level/creation_mode
scoreboard players operation @s kello.level.id = #generator.local_level_id kello.value
scoreboard players operation @s kello.level.var = #local kello.level.var

scoreboard players operation @s kello.entity.variant = #variant kello.value