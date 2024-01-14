execute as @e[type=minecraft:text_display,tag=inquognito.keypad.display.1,limit=1] run data modify entity @s text set value '{"score":{"name":"key.1","objective":"inquognito.keypad"},"color":"green","type":"score"}'
execute as @e[type=minecraft:text_display,tag=inquognito.keypad.display.2,limit=1] run data modify entity @s text set value '{"score":{"name":"key.2","objective":"inquognito.keypad"},"color":"green","type":"score"}'
execute as @e[type=minecraft:text_display,tag=inquognito.keypad.display.3,limit=1] run data modify entity @s text set value '{"score":{"name":"key.3","objective":"inquognito.keypad"},"color":"green","type":"score"}'
execute as @e[type=minecraft:text_display,tag=inquognito.keypad.display.4,limit=1] run data modify entity @s text set value '{"score":{"name":"key.4","objective":"inquognito.keypad"},"color":"green","type":"score"}'

return 1