# Set score

scoreboard players set #state kello.value 0
scoreboard players reset @s kello.entity.timer




# Animation

execute if score @s aj.launchpad.animation.shoot.local_anim_time matches 15 run function kello:entity/decal/component/launchpad/animation/cancel




# Visual parts

#execute as @e[type=item_display,tag=pr.target,tag=kello.entity.type.launchpad,tag=kello.entity.part.visual,tag=kello.entity.target] run function kello:entity/decal/component/launchpad/state/idle/visual/dimmen
execute on passengers if entity @s[type=item_display,tag=kello.entity.part.visual] run function kello:entity/decal/component/launchpad/state/idle/visual/dimmen