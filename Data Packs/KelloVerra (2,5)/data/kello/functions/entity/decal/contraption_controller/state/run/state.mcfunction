# Activate when the shaft activated matches the amount of shaft activation requirements

execute if score @s kello.entity.timer matches ..0 if score @s kello.decal.timer matches 0.. if score @s kello.decal.shafts_activated >= @s kello.decal.shafts run function kello:entity/decal/contraption_controller/state/run/cooldown/reset
execute if score @s kello.entity.timer matches ..0 if score @s kello.decal.shafts_activated < @s kello.decal.shafts run function kello:entity/decal/contraption_controller/state/run/cooldown/main



scoreboard players remove @s[scores={kello.entity.timer=1..}] kello.entity.timer 1
return 1