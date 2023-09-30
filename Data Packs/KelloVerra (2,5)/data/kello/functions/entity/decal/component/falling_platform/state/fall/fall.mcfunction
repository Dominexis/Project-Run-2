tp @s ~ ~-0.25 ~
scoreboard players set @s kello.decal.delay 4
execute positioned ~-.52 ~1 ~-.52 if entity @a[dx=0.2,dy=0.5,dz=0.2] positioned ~.52 ~-1 ~.52 run function kello:entity/decal/component/falling_platform/state/fall/slow