# Cancel low level of detail

execute if score #state kello.value matches 2 run function kello:entity/decal/component/launchpad/state/low_lod/cancel



# Set score

scoreboard players set #state kello.value 0
scoreboard players reset @s kello.entity.timer




# Animation

scoreboard players set #boolean_1 kello.value 0

execute if score #boolean_1 kello.value matches 0 if score @s aj.launchpad.animation.shoot.local_anim_time matches 15 run function kello:entity/decal/component/launchpad/animation/cancel
execute if score #boolean_1 kello.value matches 0 unless entity @s[tag=aj.launchpad.animation.shoot] run function kello:entity/decal/component/launchpad/animation/cancel




# Visual parts

execute on passengers if entity @s[type=item_display,tag=kello.entity.part.visual] run function kello:entity/decal/component/launchpad/state/idle/visual/dimmen