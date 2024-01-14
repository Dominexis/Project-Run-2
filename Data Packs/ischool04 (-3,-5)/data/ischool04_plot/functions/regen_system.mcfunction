effect give @a[tag=pr.target] minecraft:regeneration 2 2 false
execute at @a[tag=pr.target] run playsound minecraft:entity.generic.eat master @a[tag=pr.target] ~ ~ ~ 1 1 1
scoreboard players reset isch.regen isch.regen
return 1