execute unless score #state kello.value matches 3 positioned ^ ^ ^-1 if entity @e[type=minecraft:item_display,distance=..1.825,tag=pr.target,tag=!pr.ignore,tag=kello.decal,tag=kello.empty,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.small] run function kello:entity/thrown/small_cog/state/fixed/start
execute unless score #state kello.value matches 3 positioned ^ ^ ^2.5 if entity @e[type=minecraft:item_display,distance=..0.95,tag=pr.target,tag=!pr.ignore,tag=kello.decal,tag=kello.empty,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.small] run function kello:entity/thrown/small_cog/state/fixed/start

execute unless score #state kello.value matches 1..4 run function kello:entity/thrown/small_cog/state/recoil/fail_start
return 1