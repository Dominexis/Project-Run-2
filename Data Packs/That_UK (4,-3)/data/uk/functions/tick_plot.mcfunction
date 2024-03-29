# This function will run every tick while players are in your plot on the center block at Y=0

# Tick players
execute as @a[tag=pr.target] at @s run function uk:tick_player



# Kill entities
kill @e[type=item,tag=pr.target]
kill @e[type=minecraft:experience_orb,tag=pr.target]



# Ensure that a pillager always exists
execute if entity @a[tag=pr.target,tag=uk_has_bow] unless entity @e[type=pillager,tag=pr.target] run function uk:spawn_pillager
execute unless entity @a[tag=pr.target,tag=uk_has_bow] run kill @e[type=pillager,tag=pr.target]





# function uk:range/tick
# function uk:range/target_1
# function uk:range/target_2
# function uk:range/target_3


# execute as @a[tag=pr.target] at @s if block ~ ~-2 ~ minecraft:cherry_planks run tag @s add uk_toTp1
# execute as @a[tag=pr.target] at @s if block ~ ~-2 ~ minecraft:acacia_planks run tag @s add uk_toTp2

# tp @a[tag=uk_toTp1,tag=pr.target] ~-7 ~-61 ~4 -90 0
# execute as @a[tag=uk_toTp1,tag=pr.target] at @s run tp @s @s
# execute as @a[tag=uk_toTp1,tag=pr.target] at @s run playsound minecraft:entity.enderman.teleport master @s
# scoreboard players set @a[tag=uk_toTp1,tag=pr.target] uk_range_detect 0
# execute if entity @a[tag=uk_toTp1,tag=pr.target] unless score uktargetHolder uk_targets matches 0.. run scoreboard players set uktargetHolder uk_targets 0
# tag @a[tag=pr.target] remove uk_toTp1

# tp @a[tag=uk_toTp2,tag=pr.target] ~34 ~33 ~0 -90 0
# execute as @a[tag=uk_toTp2,tag=pr.target] at @s run tp @s @s
# execute as @a[tag=uk_toTp2,tag=pr.target] at @s run playsound minecraft:entity.enderman.teleport master @s
# tag @a[tag=pr.target] remove uk_toTp2
# return 1