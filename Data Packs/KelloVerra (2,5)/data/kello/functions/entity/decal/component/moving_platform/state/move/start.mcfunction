# Set score

scoreboard players set #state kello.value 1
scoreboard players set @s kello.entity.timer 4
scoreboard players operation #local kello.decal.state = @s kello.decal.state


# Animation

function kello:entity/decal/component/moving_platform/state/on_start_move

function kello:entity/decal/component/moving_platform/animation/moving_pre

# execute if score @s kello.entity.variant matches 0 run function animated_java:falling_platform/apply_variant/chapter_1_0
# execute if score @s kello.entity.variant matches 1 run function animated_java:falling_platform/apply_variant/chapter_1_1

tag @s remove kello.state.force_move
tag @s remove kello.state.force_deactive