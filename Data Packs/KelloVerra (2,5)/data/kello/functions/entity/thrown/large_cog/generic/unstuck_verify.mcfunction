scoreboard players set #return kello.value 1

execute if entity @e[type=minecraft:item_display,distance=..2,tag=pr.target,tag=aj.decwheel.root,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.large] run scoreboard players set #return kello.value 0
execute if entity @e[type=minecraft:item_display,distance=..2,tag=pr.target,tag=aj.launchpad.root,tag=kello.entity.ticking,scores={kello.entity.state=..1}] run scoreboard players set #return kello.value 0

execute if score #return kello.value matches 1 run tag @s add kello.state.force_recoil
return 1