execute unless score #state kello.value matches 3 positioned ^ ^ ^-1 if entity @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=kello.decal,tag=kello.empty,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.small,distance=..1.825] run function kello:entity/thrown/small_cog/state/fixed/start
execute unless score #state kello.value matches 3 positioned ^ ^ ^2.5 if entity @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=kello.decal,tag=kello.empty,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.small,distance=..0.95] run function kello:entity/thrown/small_cog/state/fixed/start

execute unless score #state kello.value matches 1..4 run function kello:entity/thrown/small_cog/state/recoil/fail_start