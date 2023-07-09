# say Reset

execute as @e[type=block_display,tag=pr.target] run data modify entity @s Glowing set value 0b

scoreboard objectives remove ykw.visible_for
scoreboard objectives remove ykw.ecolocation
scoreboard objectives remove ykw.cooldown
scoreboard objectives remove ykw.countup

setblock ~-40 ~12 ~-24 air
setblock ~-40 ~12 ~24 air
setblock ~-24 ~12 ~-24 air
setblock ~-24 ~12 ~-40 air
setblock ~-24 ~12 ~24 air
setblock ~24 ~12 ~-24 air

setblock ~-40 ~11 ~-24 air
setblock ~-40 ~11 ~24 air
setblock ~-24 ~11 ~-24 air
setblock ~-24 ~11 ~-40 air
setblock ~-24 ~11 ~24 air
setblock ~24 ~11 ~-24 air

kill @e[tag=ykw,tag=pr.target]
