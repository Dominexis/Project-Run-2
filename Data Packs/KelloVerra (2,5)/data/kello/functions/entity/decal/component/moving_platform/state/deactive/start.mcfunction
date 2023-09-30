# Set score

scoreboard players set #state kello.value 0
scoreboard players operation #local kello.decal.state = @s kello.decal.state


function kello:entity/decal/component/moving_platform/state/deactivate/invert

function kello:entity/decal/component/moving_platform/state/on_deactivate

execute on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin run function kello:entity/decal/component/moving_platform/animation/impact

tag @s remove kello.state.force_move
tag @s remove kello.state.force_deactive