execute as @a[tag=pr.target] at @s if score @s PlatCreate matches 1.. if entity @e[type=armor_stand,tag=Platform,distance=..2] run function platform:fail
execute as @a[tag=pr.target] at @s if score @s PlatCreate matches 1.. unless entity @e[type=armor_stand,tag=Platform,distance=..2] run function platform:time/platcreate
scoreboard players add @e[tag=Platform,tag=pr.target] PlatTime 1
execute as @e[tag=Platform,tag=pr.target] at @s if score @s PlatTime matches 90.. run function platform:time/platdestroy
scoreboard players set @a[tag=pr.target] PlatCreate 0
function platform:time/plattime

kill @e[type=item,tag=pr.target]

execute as @a[tag=pr.target] store result score @s PlatItem run clear @s carrot_on_a_stick 0
execute as @a[tag=pr.target] at @s unless block ~ -63 ~ sea_lantern run scoreboard players set @s PlatItem 2
give @a[tag=pr.target,scores={PlatItem=0}] carrot_on_a_stick{display:{Name:'{"text":"Create Platform","color":"gold","italic":false}'},Unbreakable:1b}
clear @a[tag=pr.target,scores={PlatItem=2..}] carrot_on_a_stick

execute as @a[tag=pr.target] at @s if block ~ ~-0.1 ~ black_stained_glass run kill @s
execute as @a[tag=pr.target] at @s if block ~ ~-0.1 ~ spruce_wood run kill @s