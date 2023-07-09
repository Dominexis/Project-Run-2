#backspace

scoreboard players operation lokid lokicode = lokic lokicode
scoreboard players operation lokic lokicode = lokib lokicode
scoreboard players operation lokib lokicode = lokia lokicode
scoreboard players set lokia lokicode 0

execute as @e[tag=loki0000,tag=pr.target] at @s run data merge block ~ ~ ~ {front_text:{messages:['{"score":{"name":"lokia","objective":"lokicode"},"color":"green"}','{"score":{"name":"lokib","objective":"lokicode"},"color":"green"}','{"score":{"name":"lokic","objective":"lokicode"},"color":"green"}','{"score":{"name":"lokid","objective":"lokicode"},"color":"green"}']}}
execute as @e[tag=lokiaa,tag=pr.target] at @e[tag=loki0000,tag=pr.target] run data modify entity @s text set from block ~ ~ ~ front_text.messages[0]
execute as @e[tag=lokibb,tag=pr.target] at @e[tag=loki0000,tag=pr.target] run data modify entity @s text set from block ~ ~ ~ front_text.messages[1]
execute as @e[tag=lokicc,tag=pr.target] at @e[tag=loki0000,tag=pr.target] run data modify entity @s text set from block ~ ~ ~ front_text.messages[2]
execute as @e[tag=lokidd,tag=pr.target] at @e[tag=loki0000,tag=pr.target] run data modify entity @s text set from block ~ ~ ~ front_text.messages[3]