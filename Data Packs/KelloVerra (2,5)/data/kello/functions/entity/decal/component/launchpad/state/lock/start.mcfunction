# Set score

scoreboard players set #state kello.value 1




# Animation

function kello:entity/decal/component/launchpad/animation/bloom




# Visual parts

execute on passengers if entity @s[type=minecraft:item_display,tag=kello.entity.part.visual] run function kello:entity/decal/component/launchpad/state/lock/visual/brighten
return 1