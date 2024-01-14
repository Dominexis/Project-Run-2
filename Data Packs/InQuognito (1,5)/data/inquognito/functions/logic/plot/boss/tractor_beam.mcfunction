execute positioned ~-5 ~-36 ~-24 run function inquognito:logic/plot/boss/particles/tractor_beam

execute positioned ~-6.5 ~-36 ~-25.5 if entity @s[dx=2,dy=0,dz=2,tag=!inquognito.escaping] unless score @s inquognito.dialogue matches 5 run function inquognito:logic/plot/boss/dialogue/reset
execute positioned ~-6.5 ~-36 ~-25.5 if entity @s[dx=2,dy=0,dz=2,tag=!inquognito.escaping] unless score @s inquognito.dialogue matches 5 run scoreboard players set @s inquognito.dialogue 5

execute positioned ~-6.5 ~-12 ~-25.5 if entity @s[dx=2,dy=0,dz=2] run function inquognito:logic/plot/escape_sequence/start

return 1