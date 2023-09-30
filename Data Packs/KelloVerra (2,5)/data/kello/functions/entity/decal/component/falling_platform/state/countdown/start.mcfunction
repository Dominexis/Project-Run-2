# Set score

scoreboard players set #state kello.value 0


# Start flash

scoreboard players operation #local kello.entity.id = @s kello.entity.id
execute as @e[type=item_display,tag=kello.entity.type.falling_platform_spawner] if score @s kello.entity.id = #local kello.entity.id run function kello:entity/decal/component/falling_platform/spawn/chapter_1/display/flash