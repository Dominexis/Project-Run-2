# execute if score #level_creation_mode kello.value matches 1 run scoreboard players operation @s kello.level.id = #local kello.level.id
scoreboard players operation @s kello.level.id = #generator.local_level_id kello.value

scoreboard players operation @s kello.entity.variant = #variant kello.value