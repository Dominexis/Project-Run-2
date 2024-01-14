scoreboard players remove @s kello.decal.delay 1
execute if score @s kello.decal.delay matches ..0 run function kello:entity/decal/component/falling_platform/state/fall/fall


execute at @s positioned ~-.505 ~-.5 ~-.505 as @a[dx=0.05,dy=0,dz=0.05] positioned ~.505 ~.5 ~.505 positioned ~-.505 ~.35 ~-.505 if entity @s[dx=0.05,dy=0,dz=0.05] positioned ~.505 ~.65 ~.505 run tp @s ~ ~ ~
return 1