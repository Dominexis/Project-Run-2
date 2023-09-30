#execute if entity @s[tag=kello.attach] run function kello:entity/decal/component/falling_platform/state/lock/start
scoreboard players remove @s kello.entity.timer 1
execute if score @s kello.entity.timer matches ..14 rotated 0 90 positioned ~ ~.5 ~ run function kello:entity/decal/meteor_pillar/spawn/main
execute if score @s kello.entity.timer matches ..7 run function kello:entity/decal/component/falling_platform/state/spawn/start