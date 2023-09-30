# Set score

scoreboard players set #state kello.value 1


# Spawn boom

scoreboard players operation #local kello.entity.id = @s kello.entity.id
function kello:entity/decal/component/falling_platform/animation/spawn_sequence/boom/main