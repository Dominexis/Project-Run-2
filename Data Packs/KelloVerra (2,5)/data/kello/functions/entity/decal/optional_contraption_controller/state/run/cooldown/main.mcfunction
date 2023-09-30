scoreboard players add @s kello.decal.timer 0

execute if score #state kello.value matches 1 if score @s kello.decal.timer matches ..-1 run function kello:entity/decal/optional_contraption_controller/state/run/cooldown/start
execute if score @s kello.decal.timer matches ..0 run function kello:entity/decal/optional_contraption_controller/state/inv/start
scoreboard players remove @s[scores={kello.decal.timer=0..}] kello.decal.timer 1