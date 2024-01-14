#teleport
execute if entity @e[distance=..1,tag=bnsd.gototp,tag=pr.target] run title @s times 0t 20t 5t
execute if entity @e[distance=..1,tag=bnsd.gototp,tag=pr.target] run title @s title {"text":"\uF846","font":"bansed:default","type":"text"}
execute if entity @e[distance=..1,tag=bnsd.gototp,tag=pr.target] run playsound minecraft:block.portal.trigger master @s ~ ~ ~ .5 2
execute if entity @e[distance=..1,tag=bnsd.gototp,tag=pr.target] run function bansed:goto2d
execute if entity @e[distance=..1,tag=bnsd.gototp,tag=pr.target] align z positioned ~ ~ ~.5 run tp @s ~-5 ~-15 ~29

execute if entity @s[tag=bnsd.incherry] if block ~ ~.1 ~ minecraft:water at @e[tag=bnsd.cherrytp,tag=pr.target] run effect give @s minecraft:blindness 1 1 true
execute if entity @s[tag=bnsd.incherry] if block ~ ~.1 ~ minecraft:water at @e[tag=bnsd.cherrytp,tag=pr.target] run tp @s ~ ~ ~


#sounds
function bansed:sounds


#sneak
scoreboard players set @s bnsd.sneak 0

execute if entity @e[distance=...1,tag=bnsd.cherryend,tag=pr.target] run title @s times 0t 20t 5t
execute if entity @e[distance=...1,tag=bnsd.cherryend,tag=pr.target] run title @s title {"text":"\uF846","font":"bansed:default","type":"text"}
execute if entity @e[distance=...1,tag=bnsd.cherryend,tag=pr.target] run tp @s ~-10 ~47 ~-3
execute if entity @e[distance=...1,tag=bnsd.cherryend,tag=pr.target] run function bansed:leave2d

return 1