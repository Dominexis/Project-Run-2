execute as @e[type=#inquognito:enemies,distance=..6] run function inquognito:logic/abilities/gun/augments/nova/hit

particle minecraft:explosion_emitter ~ ~ ~ 0.0 0.0 0.0 0.0 1 normal @a
playsound minecraft:entity.generic.explode player @a
