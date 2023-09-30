
scoreboard players operation #debugloc aj.id = @s aj.id

execute if entity @s[tag=kello.entity.type.small,tag=kello.entity.type.cogwheel] as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=!aj.decwheel.root,tag=aj.decwheel.rig_entity] if score @s aj.id = #debugloc aj.id run function kello:entity/generic/zzz_condense/branch/small_cogwheel
execute if entity @s[tag=kello.entity.type.large,tag=kello.entity.type.cogwheel] as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=!aj.decwheel.root,tag=aj.decwheel.rig_entity] if score @s aj.id = #debugloc aj.id run function kello:entity/generic/zzz_condense/branch/large_cogwheel
execute if entity @s[tag=kello.entity.type.small,tag=kello.entity.type.cogwheel_decshaft] as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=!aj.decwheel.root,tag=aj.decwheel.rig_entity] if score @s aj.id = #debugloc aj.id run function kello:entity/generic/zzz_condense/branch/small_decshaft
execute if entity @s[tag=kello.entity.type.large,tag=kello.entity.type.cogwheel_decshaft] as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=!aj.decwheel.root,tag=aj.decwheel.rig_entity] if score @s aj.id = #debugloc aj.id run function kello:entity/generic/zzz_condense/branch/large_decshaft

scoreboard players set #boolean kello.value 1