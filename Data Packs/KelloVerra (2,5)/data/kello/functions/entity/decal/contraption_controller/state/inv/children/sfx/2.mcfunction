scoreboard players remove @s kello.sound.delay 2
execute if score @s kello.sound.delay matches ..0 run function kello:entity/decal/contraption_controller/state/inv/children/sfx/2_p
return 1