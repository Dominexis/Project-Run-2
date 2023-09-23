#teleport
execute if entity @e[tag=bnsd.gototp,tag=pr.target,distance=..1] run title @s times 0t 20t 5t
execute if entity @e[tag=bnsd.gototp,tag=pr.target,distance=..1] run title @s title {"text":"\uF846","font":"bansed:default"}
execute if entity @e[tag=bnsd.gototp,tag=pr.target,distance=..1] run playsound minecraft:block.portal.trigger master @s ~ ~ ~ .5 2
execute if entity @e[tag=bnsd.gototp,tag=pr.target,distance=..1] run function bansed:goto2d
execute if entity @e[tag=bnsd.gototp,tag=pr.target,distance=..1] align z positioned ~ ~ ~.5 run tp @s ~-5 ~-15 ~29

execute as @s[tag=bnsd.incherry] if block ~ ~.1 ~ water at @e[tag=bnsd.cherrytp,tag=pr.target] run effect give @s blindness 1 1 true
execute as @s[tag=bnsd.incherry] if block ~ ~.1 ~ water at @e[tag=bnsd.cherrytp,tag=pr.target] run tp @s ~ ~ ~


#sounds
function bansed:sounds


#sneak
scoreboard players set @s bnsd.sneak 0

execute if entity @e[tag=bnsd.cherryend,tag=pr.target,distance=...1] run title @s times 0t 20t 5t
execute if entity @e[tag=bnsd.cherryend,tag=pr.target,distance=...1] run title @s title {"text":"\uF846","font":"bansed:default"}
execute if entity @e[tag=bnsd.cherryend,tag=pr.target,distance=...1] run tp @s ~-10 ~47 ~-3
execute if entity @e[tag=bnsd.cherryend,tag=pr.target,distance=...1] run function bansed:leave2d
