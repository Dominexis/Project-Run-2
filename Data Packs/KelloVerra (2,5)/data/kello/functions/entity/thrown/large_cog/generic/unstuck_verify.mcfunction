scoreboard players set #return kello.value 1

execute if entity @e[type=item_display,tag=pr.target,tag=aj.decwheel.root,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.large,distance=..2] run scoreboard players set #return kello.value 0
execute if entity @e[type=item_display,tag=pr.target,tag=aj.launchpad.root,tag=kello.entity.ticking,distance=..2,scores={kello.entity.state=..1}] run scoreboard players set #return kello.value 0

execute if score #return kello.value matches 1 run tag @s add kello.state.force_recoil