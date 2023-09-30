#execute if entity @s[tag=kello.attach] run function kello:entity/decal/component/forward_platform/state/lock/start
scoreboard players remove @s kello.entity.timer 1
execute if score @s kello.entity.timer matches ..0 run function kello:entity/decal/component/forward_platform/state/move/start