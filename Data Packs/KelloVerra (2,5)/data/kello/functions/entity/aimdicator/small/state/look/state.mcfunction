execute if entity @s[tag=!kello.look] run function kello:entity/aimdicator/small/state/idle/start
execute if score @s kello.aim.count matches 1.. run function kello:entity/aimdicator/small/state/targ/start
tag @s remove kello.look