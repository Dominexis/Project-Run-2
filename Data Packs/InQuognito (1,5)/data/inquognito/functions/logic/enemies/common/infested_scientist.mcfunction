attribute @s minecraft:generic.max_health base set 8.0
attribute @s minecraft:generic.attack_damage base set 6.0
attribute @s minecraft:generic.movement_speed base set 0.3

data merge entity @s {VillagerData:{type:"swamp",profession:"butcher",level:99}}

function inquognito:logic/enemies/common/modifiers/undead
function inquognito:logic/enemies/common/modifiers/infestation

return 1