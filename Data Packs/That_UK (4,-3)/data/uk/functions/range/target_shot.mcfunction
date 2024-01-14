execute as @e[type=minecraft:marker,tag=uk.particle,tag=pr.target] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0.1 0.1 0.1 0.1 10
scoreboard players add uktargetHolder uk_targets 1
# tag @a[tag=pr.target] remove uk_targetHit
return 1