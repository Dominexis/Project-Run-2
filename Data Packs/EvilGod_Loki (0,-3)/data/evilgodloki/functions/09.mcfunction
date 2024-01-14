#keypad 0~9 input

scoreboard players operation lokia lokicode = lokib lokicode
scoreboard players operation lokib lokicode = lokic lokicode
scoreboard players operation lokic lokicode = lokid lokicode
scoreboard players operation lokid lokicode = temp lokicode

execute as @e[tag=loki0000,tag=pr.target] at @s run data merge block ~ ~ ~ {front_text:{messages:['{"score":{"name":"lokia","objective":"lokicode"},"color":"green","type":"score"}','{"score":{"name":"lokib","objective":"lokicode"},"color":"green","type":"score"}','{"score":{"name":"lokic","objective":"lokicode"},"color":"green","type":"score"}','{"score":{"name":"lokid","objective":"lokicode"},"color":"green","type":"score"}']}}
execute as @e[tag=lokiaa,tag=pr.target] at @e[tag=loki0000,tag=pr.target] run data modify entity @s text set from block ~ ~ ~ front_text.messages[0]
execute as @e[tag=lokibb,tag=pr.target] at @e[tag=loki0000,tag=pr.target] run data modify entity @s text set from block ~ ~ ~ front_text.messages[1]
execute as @e[tag=lokicc,tag=pr.target] at @e[tag=loki0000,tag=pr.target] run data modify entity @s text set from block ~ ~ ~ front_text.messages[2]
execute as @e[tag=lokidd,tag=pr.target] at @e[tag=loki0000,tag=pr.target] run data modify entity @s text set from block ~ ~ ~ front_text.messages[3]
return 1