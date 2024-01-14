#detects if the player is near a bumper block to apply the impulse (function jump)
execute at @e[type=minecraft:marker,tag=bumper,tag=pr.target] as @a[distance=..1.1,tag=pr.target,scores={timerCDs=..1}] at @s run function cds28:prejump
execute at @e[type=minecraft:marker,tag=bumper,tag=pr.target] as @a[distance=..2,tag=pr.target,scores={timerCDs=11}] at @s run function cds28:jump
#stop the sound of the creepers
execute if entity @a[tag=pr.target,scores={timerCDs=1..}] run stopsound @a[distance=..40] block minecraft:entity.generic.explode
scoreboard players set @a[tag=pr.target,scores={timerCDs=1..}] pr.stop_launch_sound 10
#apply the function slimelight to mark visually the bumper blocks near the player (16 blocks)
execute at @e[type=minecraft:marker,tag=bumper,tag=pr.target] if entity @a[distance=..20,tag=pr.target] run function cds28:slimelight
return 1