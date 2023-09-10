scoreboard objectives add titruc.interactivejump.score.red dummy
scoreboard players set @a titruc.interactivejump.score.red 00
scoreboard objectives add titruc.interactivejump.score.blue dummy
scoreboard players set @a titruc.interactivejump.score.blue 00
scoreboard objectives add titruc.interactivejump.score.yellow dummy
scoreboard players set @a titruc.interactivejump.score.yellow 00
scoreboard objectives add titruc.interactivejump.score.green dummy
scoreboard players set @a titruc.interactivejump.score.green 00
scoreboard objectives add titruc.interactivejump.score.black dummy
scoreboard objectives add titruc.interactivejump.score.timer dummy
scoreboard objectives add titruc.interactivejump.variable dummy
scoreboard players set titruc.interactivejump.variable.20 titruc.interactivejump.variable 20
scoreboard players set titruc.interactivejump.variable.0 titruc.interactivejump.variable 0
scoreboard players set titruc.interactivejump.variable.4 titruc.interactivejump.variable 4
execute positioned ~ ~ ~ run function titruc.interactivejump.sys:enter/enter_marker
say g
summon marker ~ ~ ~ {Tags:["pr.target","titruc.interactivejump.ishere"]}
