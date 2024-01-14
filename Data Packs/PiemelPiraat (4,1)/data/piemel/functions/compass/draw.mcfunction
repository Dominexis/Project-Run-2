# setup recursive circle
scoreboard players set circle-rot piemel.values 0
execute rotated 0 0 run function piemel:compass/circle-rcsv

# draw arrow
execute if score @s piemel.progress matches 0 at @s facing entity @e[tag=piemel.receival1,tag=pr.target,limit=1] feet rotated ~ 0 run function piemel:compass/aimer
execute if score @s piemel.progress matches 1 at @s facing entity @e[tag=piemel.receival2,tag=pr.target,limit=1] feet rotated ~ 0 run function piemel:compass/aimer
execute if score @s piemel.progress matches 2 at @s facing entity @e[tag=piemel.receival3,tag=pr.target,limit=1] feet rotated ~ 0 run function piemel:compass/aimer
execute if score @s piemel.progress matches 3 at @s facing entity @e[tag=piemel.receival4,tag=pr.target,limit=1] feet rotated ~ 0 run function piemel:compass/aimer
execute if score @s piemel.progress matches 4 at @s facing entity @e[tag=piemel.swingpos,tag=pr.target,limit=1] feet rotated ~ 0 run function piemel:compass/aimer
return 1