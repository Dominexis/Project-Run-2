scoreboard players remove @s kello.sound.delay 1
execute if score @s kello.sound.delay matches ..0 run function kello:entity/decal/contraption_controller/state_optional/inv/children/sfx/0_p
return 1