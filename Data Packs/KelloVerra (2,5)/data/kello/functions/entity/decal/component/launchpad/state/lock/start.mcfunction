# Set score

scoreboard players set #state kello.value 1




# Animation

function kello:entity/decal/component/launchpad/animation/bloom




# Visual parts

#execute as @e[type=item_display,tag=pr.target,tag=kello.entity.type.launchpad,tag=kello.entity.part.visual,tag=kello.entity.target] run function kello:entity/decal/component/launchpad/state/lock/visual/brighten
execute on passengers if entity @s[type=item_display,tag=kello.entity.part.visual] run function kello:entity/decal/component/launchpad/state/lock/visual/brighten