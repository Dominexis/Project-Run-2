# Atmospheric

execute if score @s kello.player.chapter matches 0 run function kello:player/tick/atmosphere/chapter_1
execute if score @s kello.player.chapter matches 1 run function kello:player/tick/atmosphere/chapter_2


# Check y level

scoreboard players set #extra_particle kello.value 1
function kello:player/tick/void/sample_y
scoreboard players set #extra_particle kello.value 0


# Unstuck cogwheel

scoreboard players operation #local kello.player.id = @s kello.player.id

execute if score @s kello.player.cog.l matches 3 as @e[type=item_display,tag=pr.target,tag=!pr.ignore,tag=!kello.exclude,tag=kello.entity.type.thrown_cogwheel,tag=kello.entity.type.large] if score @s kello.player.id = #local kello.player.id positioned as @s run function kello:entity/thrown/large_cog/generic/unstuck_verify
execute if score @s kello.player.cog.r matches 3 as @e[type=item_display,tag=pr.target,tag=!pr.ignore,tag=!kello.exclude,tag=kello.entity.type.thrown_cogwheel,tag=kello.entity.type.small] if score @s kello.player.id = #local kello.player.id positioned as @s run function kello:entity/thrown/small_cog/generic/unstuck_verify