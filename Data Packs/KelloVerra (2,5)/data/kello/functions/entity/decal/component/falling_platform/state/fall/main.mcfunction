scoreboard players remove @s kello.decal.delay 1
execute if score @s kello.decal.delay matches ..0 run function kello:entity/decal/component/falling_platform/state/fall/fall


execute positioned ~-.50125 ~-.25 ~-.50125 as @a[dx=0.0125,dy=0,dz=0.0125,tag=pr.target] positioned ~.50125 ~.25 ~.50125 positioned ~-.50125 ~.125 ~-.50125 if entity @s[dx=0.0125,dy=0,dz=0.0125] positioned ~.50125 ~.875 ~.50125 run tp @s ~ ~ ~
return 1