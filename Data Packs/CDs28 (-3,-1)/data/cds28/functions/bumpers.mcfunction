#detects if the player is near a bumper block to apply the impulse (function jump)
execute at @e[type=minecraft:marker,tag=bumper,tag=pr.target] as @a[scores={timerCDs=..1},distance=..1.1,tag=pr.target] run function cds28:jump
#detects if the creeper exploded to complete the impulse effect with the second function (function rejump) 
execute as @a[tag=jumping,tag=pr.target] at @s unless entity @e[type=minecraft:creeper,distance=..8,tag=pr.target] run function cds28:rejump
#apply the function slimelight to mark visually the bumper blocks near the player (16 blocks)
execute at @e[type=minecraft:marker,tag=bumper,tag=pr.target] if entity @a[distance=..20,tag=pr.target] run function cds28:slimelight