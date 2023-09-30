# State

scoreboard players remove @s kello.entity.timer 1
execute if score @s kello.entity.timer matches ..1 run function kello:entity/decal/contraption_controller/state/idle/start

execute if score @s kello.decal.shafts_activated >= @s kello.decal.shafts run function kello:entity/decal/contraption_controller/state/run/start