attribute @s minecraft:generic.max_health base set 4.0
attribute @s minecraft:generic.attack_damage base set 3.0
attribute @s minecraft:generic.movement_speed base set 0.25

data merge entity @s {VillagerData:{type:"swamp",profession:"butcher",level:99}}

function inquognito:logic/enemies/common/modifiers/undead

return 1