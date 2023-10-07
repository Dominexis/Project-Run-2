scoreboard players set #entity_tick_boolean kello.value 1


execute if entity @s[tag= kello.entity.activated] run scoreboard players set #entity_tick_overflow_boolean kello.value 1
execute if entity @s[tag=!kello.entity.activated] run function kello:tick/entity/verify