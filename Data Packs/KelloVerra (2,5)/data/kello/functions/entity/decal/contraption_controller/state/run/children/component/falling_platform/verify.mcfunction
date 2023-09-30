scoreboard players set #boolean kello.value 0
execute if entity @s[tag=kello.entity.type.chapter_2] run scoreboard players set #boolean kello.value 1

scoreboard players operation #falling_platform_timer kello.value = @s kello.entity.timer
scoreboard players operation #falling_platform_countdown kello.value = @s kello.decal.timer

scoreboard players operation #local kello.entity.id = @s kello.entity.id

execute if score #boolean kello.value matches 0 run function kello:entity/decal/contraption_controller/state/run/children/component/falling_platform/chapter_1/spawn
execute if score #boolean kello.value matches 1 run function kello:entity/decal/contraption_controller/state/run/children/component/falling_platform/chapter_2/spawn

tag @s remove kello.entity.meteor_spawner_bloom