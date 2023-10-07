# Cancel low level of detail

execute if score #state kello.value matches 2 run function kello:entity/decal/component/launchpad/state/low_lod/cancel



# Set score

scoreboard players set #state kello.value 0
scoreboard players reset @s kello.entity.timer




# Animation

execute if score @s aj.launchpad.animation.shoot.local_anim_time matches 15 run function kello:entity/decal/component/launchpad/animation/cancel




# Visual parts

execute on passengers if entity @s[type=item_display,tag=kello.entity.part.visual] run function kello:entity/decal/component/launchpad/state/idle/visual/dimmen