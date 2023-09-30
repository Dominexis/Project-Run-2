scoreboard players set #boolean kello.value 0
execute align xyz positioned ~.5 ~ ~.5 unless block ~ ~-1 ~ #kello:generic/unsafe summon marker run function kello:entity/checkpoint/spawn/mark_score

execute unless score #boolean kello.value matches 1 run tellraw @p {"text":"[AncientApparatus] Failed to instantiate marker, block below is considered unsafe","color":"red"}