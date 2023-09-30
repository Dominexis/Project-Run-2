#execute if entity @s[tag=kello.attach] run function kello:entity/decal/component/falling_platform/state/lock/start
scoreboard players remove @s kello.decal.timer 1
execute if score @s kello.decal.timer matches ..0 run function kello:entity/decal/component/falling_platform/state/despawn/start
execute unless block ~ ~ ~ #kello:generic/air run function kello:entity/decal/component/falling_platform/state/despawn/start