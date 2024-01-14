# say Reset

execute as @e[type=minecraft:block_display,tag=pr.target] run data modify entity @s Glowing set value 0b

scoreboard objectives remove ykw.visible_for
scoreboard objectives remove ykw.ecolocation
scoreboard objectives remove ykw.cooldown
scoreboard objectives remove ykw.countup

kill @e[tag=ykw,tag=pr.target]

return 1