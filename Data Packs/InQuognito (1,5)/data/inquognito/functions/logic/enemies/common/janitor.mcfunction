tag @s add inquognito.enemy.janitor

attribute @s minecraft:generic.max_health base set 30.0
attribute @s minecraft:generic.attack_damage base set 12.0
attribute @s minecraft:generic.movement_speed base set 0.2

data merge entity @s {VillagerData:{type:"plains",profession:"toolsmith",level:99}}

function inquognito:logic/enemies/common/modifiers/undead
function inquognito:logic/enemies/common/modifiers/infestation

return 1