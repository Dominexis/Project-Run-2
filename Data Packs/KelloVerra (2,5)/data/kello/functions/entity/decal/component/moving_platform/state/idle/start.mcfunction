# Set score

scoreboard players set #state kello.value 2
scoreboard players operation @s kello.decal.timer = @s kello.decal.delay
scoreboard players operation #local kello.decal.state = @s kello.decal.state



tag @s remove kello.impact


function kello:entity/decal/component/moving_platform/state/on_impact


execute on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin run function kello:entity/decal/component/moving_platform/animation/impact
execute as @e[tag=kello.entity.ticking,tag=kello.entity.type.moving_platform] on passengers if entity @s[tag=kello.entity.part.pointer] on origin on passengers run effect give @s minecraft:invisibility infinite 1 true


# execute if score @s kello.entity.variant matches 0 run function animated_java:falling_platform/apply_variant/chapter_1_0
# execute if score @s kello.entity.variant matches 1 run function animated_java:falling_platform/apply_variant/chapter_1_1

tag @s remove kello.state.force_move
tag @s remove kello.state.force_deactive