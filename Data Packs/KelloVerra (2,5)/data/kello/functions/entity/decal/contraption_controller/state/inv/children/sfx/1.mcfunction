scoreboard players remove @s kello.sound.delay 1
execute if score @s kello.sound.delay matches ..0 run function kello:entity/decal/contraption_controller/state/inv/children/sfx/1_p
return 1