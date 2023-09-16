#detects if the player is near a bumper block to apply the impulse (function jump)
execute at @e[type=minecraft:marker,tag=bumper,tag=pr.target] as @a[scores={timerCDs=..1},distance=..1.1,tag=pr.target] at @s run function cds28:prejump
execute at @e[type=minecraft:marker,tag=bumper,tag=pr.target] as @a[scores={timerCDs=11},distance=..2,tag=pr.target] at @s run function cds28:jump
#stop the sound of the creepers
execute if entity @a[scores={timerCDs=1..},tag=pr.target] run stopsound @a[distance=..40] block minecraft:entity.generic.explode
#apply the function slimelight to mark visually the bumper blocks near the player (16 blocks)
execute at @e[type=minecraft:marker,tag=bumper,tag=pr.target] if entity @a[distance=..20,tag=pr.target] run function cds28:slimelight