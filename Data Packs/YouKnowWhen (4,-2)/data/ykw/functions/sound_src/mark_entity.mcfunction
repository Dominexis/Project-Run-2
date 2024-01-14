data merge entity @s {Glowing:1b}
scoreboard players operation @s ykw.visible_for = default ykw.visible_for
scoreboard players set #tmp ykw.visible_for 2
scoreboard players operation #tmp ykw.visible_for *= @e[type=minecraft:marker,tag=pr.target,sort=nearest,limit=1] ykw.countup
scoreboard players operation @s ykw.visible_for -= #tmp ykw.visible_for

execute if entity @a[gamemode=!spectator] run effect give @s minecraft:glowing infinite 0 true

return 1