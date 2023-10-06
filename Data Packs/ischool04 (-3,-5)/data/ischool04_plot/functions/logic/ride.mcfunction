scoreboard players operation #local isch.id = @s isch.id
execute as @e[type=horse,tag=Czg,tag=pr.target] if score @s isch.id = #local isch.id run tag @s add isch.target

ride @s mount @e[type=horse,tag=Czg,tag=pr.target,tag=isch.target,limit=1]
tag @e[type=horse,tag=Czg,tag=pr.target] remove isch.target