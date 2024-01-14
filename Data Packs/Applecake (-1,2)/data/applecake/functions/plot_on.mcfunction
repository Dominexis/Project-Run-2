execute as @e[tag=ac.entity,tag=pr.target] run tp @s ~ ~ ~
execute as @e[tag=ac.entity,tag=pr.target] run kill @s
# execute positioned ~ ~ ~ run schedule function applecake:ac/killentitydrop 1s replace
scoreboard objectives add ac.delay dummy
scoreboard objectives add ac.delay2 dummy
scoreboard objectives add ac.stage dummy
scoreboard objectives add ac.player dummy
scoreboard objectives add ac.PosY dummy
scoreboard objectives add ac.body dummy
# scoreboard players reset * ac.delay
# scoreboard players reset * ac.delay2
# scoreboard players reset * ac.stage
# scoreboard players reset * ac.PosY
# scoreboard players reset * ac.body

return 1