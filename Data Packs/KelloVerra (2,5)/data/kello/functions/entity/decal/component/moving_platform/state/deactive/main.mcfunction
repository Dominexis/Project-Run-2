scoreboard players operation #local kello.decal.state = @s kello.decal.state
execute on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin run function kello:entity/decal/component/moving_platform/state/deactive/as_platform
return 1