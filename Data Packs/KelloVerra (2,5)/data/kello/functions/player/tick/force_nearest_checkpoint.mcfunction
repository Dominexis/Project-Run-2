tag @s add kello.player.force_checkpoint
execute at @s summon minecraft:marker run function kello:player/tick/force_nearest_checkpoint_position
execute as @e[type=minecraft:item_display,distance=..16,tag=kello.entity.type.checkpoint,tag=kello.entity.part.mark,sort=nearest,limit=1] at @s on passengers on origin run function kello:entity/checkpoint/state/checkpoint/force_nearest
tag @s remove kello.player.force_checkpoint
return 1