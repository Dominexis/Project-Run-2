scoreboard players operation #local kello.decal.state = @s kello.decal.state

scoreboard players operation #local kello.decal.sequence = @s kello.decal.sequence
execute on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin positioned as @s run function kello:entity/decal/component/moving_platform/state/idle/as_platform
scoreboard players operation @s kello.decal.sequence = #local kello.decal.sequence
return 1