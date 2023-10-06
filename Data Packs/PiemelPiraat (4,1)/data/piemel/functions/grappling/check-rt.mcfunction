# recursive raytrace for detecting a target
# execute as @e[tag=piemel.raytrace,tag=pr.target] at @s rotated as @s run tp @s ^ ^ ^.3
# scoreboard players add raytrace piemel.values 1
# execute at @e[tag=piemel.raytrace,tag=pr.target] if entity @e[tag=piemel.grabhooktarget,tag=pr.target,distance=..1] at @s run function piemel:grappling/suggest
# execute at @e[tag=piemel.raytrace,tag=pr.target] unless entity @e[tag=piemel.grabhooktarget,tag=pr.target,distance=..1] if block ~ ~ ~ air if score raytrace piemel.values matches ..100 at @s run function piemel:grappling/check-rt
# execute at @e[tag=piemel.raytrace,tag=pr.target] unless entity @e[tag=piemel.grabhooktarget,tag=pr.target,distance=..1] if block ~ ~ ~ barrier if score raytrace piemel.values matches ..100 at @s run function piemel:grappling/check-rt

# execute as @e[tag=piemel.raytrace,tag=pr.target] at @s rotated as @s run tp @s ^ ^ ^.3
scoreboard players add raytrace piemel.values 1
execute positioned ^ ^ ^0.3 if entity @e[tag=piemel.grabhooktarget,tag=pr.target,distance=..1] at @s run function piemel:grappling/suggest
execute positioned ^ ^ ^0.3 unless entity @e[tag=piemel.grabhooktarget,tag=pr.target,distance=..1] if block ~ ~ ~ air if score raytrace piemel.values matches ..100 run function piemel:grappling/check-rt
execute positioned ^ ^ ^0.3 unless entity @e[tag=piemel.grabhooktarget,tag=pr.target,distance=..1] if block ~ ~ ~ barrier if score raytrace piemel.values matches ..100 run function piemel:grappling/check-rt