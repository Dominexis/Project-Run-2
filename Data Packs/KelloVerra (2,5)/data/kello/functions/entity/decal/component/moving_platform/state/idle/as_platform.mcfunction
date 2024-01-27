execute if score #local kello.decal.state matches 0 positioned as @s if entity @a[distance=..8] run function kello:tick/aj/moving_platform
execute if score #local kello.decal.state matches 1 positioned as @s if entity @a[distance=..8] run function kello:tick/aj/dangling_platform

execute if score #local kello.decal.sequence matches 18.. if entity @s[tag=kello.entity.type.z] rotated as @s run function kello:entity/decal/component/moving_platform/state/idle/z/inverse_check
execute if score #local kello.decal.sequence matches 18.. if entity @s[tag=kello.entity.type.x] rotated as @s run function kello:entity/decal/component/moving_platform/state/idle/x/inverse_check

execute if score #local kello.decal.sequence matches 0.. if score #state_vfx kello.value matches 1 on passengers if entity @s[tag=kello.entity.part.indicator] run function kello:entity/decal/component/moving_platform/state/idle/platform_indicator
execute if score #local kello.decal.sequence matches 0.. if score #state_vfx kello.value matches 0 on passengers if entity @s[tag=kello.entity.part.indicator] run function kello:entity/decal/component/moving_platform/state/idle/hit_indicator
return 1