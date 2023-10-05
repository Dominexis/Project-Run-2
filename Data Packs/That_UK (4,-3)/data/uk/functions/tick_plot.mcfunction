# This function will run every tick while players are in your plot on the center block at Y=0

function uk:range/tick
function uk:range/target_1
function uk:range/target_2
function uk:range/target_3


execute as @a[tag=pr.target] at @s if block ~ ~-2 ~ cherry_planks run tag @s add uk_toTp1
execute as @a[tag=pr.target] at @s if block ~ ~-2 ~ acacia_planks run tag @s add uk_toTp2

tp @a[tag=uk_toTp1,tag=pr.target] ~-7 ~-61 ~4 -90 0
execute as @a[tag=uk_toTp1,tag=pr.target] at @s run tp @s @s
execute as @a[tag=uk_toTp1,tag=pr.target] at @s run playsound minecraft:entity.enderman.teleport master @s
scoreboard players set @a[tag=uk_toTp1,tag=pr.target] uk_range_detect 0
execute if entity @a[tag=uk_toTp1,tag=pr.target] unless score uktargetHolder uk_targets matches 0.. run scoreboard players set uktargetHolder uk_targets 0
tag @a[tag=pr.target] remove uk_toTp1

tp @a[tag=uk_toTp2,tag=pr.target] ~34 ~33 ~0 -90 0
execute as @a[tag=uk_toTp2,tag=pr.target] at @s run tp @s @s
execute as @a[tag=uk_toTp2,tag=pr.target] at @s run playsound minecraft:entity.enderman.teleport master @s
tag @a[tag=pr.target] remove uk_toTp2