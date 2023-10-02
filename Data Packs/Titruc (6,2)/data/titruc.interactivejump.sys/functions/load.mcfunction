scoreboard objectives add titruc.interactivejump.score.red dummy
scoreboard objectives add titruc.interactivejump.score.blue dummy
scoreboard objectives add titruc.interactivejump.score.yellow dummy
scoreboard objectives add titruc.interactivejump.score.green dummy
scoreboard objectives add titruc.interactivejump.score.black dummy
scoreboard objectives add titruc.interactivejump.score.timer dummy
scoreboard objectives add titruc.interactivejump.variable dummy
scoreboard objectives add titruc.interactivejump.standing_on_deepslate dummy
scoreboard objectives add titruc.interactivejump.standing_on_deepslate_prev dummy
scoreboard players set titruc.interactivejump.variable.20 titruc.interactivejump.variable 20
scoreboard players set titruc.interactivejump.variable.0 titruc.interactivejump.variable 0
scoreboard players set titruc.interactivejump.variable.4 titruc.interactivejump.variable 4
execute positioned ~ ~ ~ run function titruc.interactivejump.sys:enter/enter_marker
summon marker ~ ~ ~ {Tags:["pr.target","titruc.interactivejump.ishere"]}

summon text_display ~-16 ~3.35 ~-10 {Tags:["titruc.hint"],text:'{"text":"Look here -->","color":"white","bold":true}',background:0,Rotation:[90.0f,0.0f]}