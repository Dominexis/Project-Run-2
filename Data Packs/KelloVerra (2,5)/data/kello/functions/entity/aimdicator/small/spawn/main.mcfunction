# Summon entity(ies)

scoreboard players add #global kello.entity.id 1
scoreboard players add #global kello.aim.id 1
execute summon minecraft:text_display run function kello:entity/aimdicator/small/spawn/score
return 1