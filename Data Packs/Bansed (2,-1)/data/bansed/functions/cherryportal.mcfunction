scoreboard players add @s bnsd.cherryportal 1

execute if score @s bnsd.cherryportal matches 2 run effect give @s minecraft:nausea 10 1 true
execute if score @s bnsd.cherryportal matches 2 run playsound minecraft:block.portal.travel master @s ~ ~ ~ .3 2
execute if score @s bnsd.cherryportal matches 50 run tag @s add bnsd.incherry
execute if score @s bnsd.cherryportal matches 50 run scoreboard players set @s bnsd.sound.jungle -1
execute if score @s bnsd.cherryportal matches 50 at @e[tag=bnsd.cherryportal,tag=pr.target] run tp @s ~-23 ~-12 ~-10
execute if score @s bnsd.cherryportal matches 50 run effect clear @s minecraft:nausea


return 1