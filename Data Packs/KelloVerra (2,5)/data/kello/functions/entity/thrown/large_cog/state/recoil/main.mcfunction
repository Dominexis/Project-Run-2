# Teleport

execute as @p[tag=pr.target,tag=kello.entity.player.target] if score @s kello.player.cog.l matches 1 run scoreboard players set @s kello.player.cog.l 0
execute anchored eyes facing entity @e[type=minecraft:marker,tag=kello.entity.target_kill,limit=1] eyes run tp @s ~ ~ ~ ~ ~
tp @s ^ ^-.1 ^3.25
execute positioned as @s rotated as @s on passengers run tp @s ~ ~ ~ ~ ~
kill @e[type=minecraft:marker,tag=kello.entity.target_kill,limit=1]


scoreboard players remove @s kello.sound.timer 1
execute if score @s kello.sound.timer matches ..1 run function kello:entity/thrown/large_cog/state/recoil/sfx
return 1