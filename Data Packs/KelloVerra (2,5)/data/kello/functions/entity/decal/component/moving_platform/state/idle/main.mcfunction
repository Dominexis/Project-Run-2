scoreboard players operation #local kello.decal.state = @s kello.decal.state

scoreboard players operation #local kello.decal.sequence = @s kello.decal.sequence

execute if entity @s[tag=kello.vfx.hit_indication] run scoreboard players set #state_vfx kello.value 0
execute if entity @s[tag=kello.vfx.direction_indication] run scoreboard players set #state_vfx kello.value 1

execute on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin positioned as @s run function kello:entity/decal/component/moving_platform/state/idle/as_platform

execute if score #local kello.decal.sequence matches -1 run tag @s remove kello.vfx.direction_indication
execute if score #local kello.decal.sequence matches -1 run tag @s remove kello.vfx.hit_indication

scoreboard players operation @s kello.decal.sequence = #local kello.decal.sequence
return 1