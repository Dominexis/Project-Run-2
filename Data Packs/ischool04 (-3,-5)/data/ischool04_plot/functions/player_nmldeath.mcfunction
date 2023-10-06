# ride @s dismount

# scoreboard players operation #local isch.id = @s isch.id
# execute as @e[tag=pr.target] if score @s isch.id = #local isch.id run tag @s add isch.target

# ride @s dismount

# tp @e[tag=pr.target,tag=isch.target] ~ -1000 ~
kill @e[tag=pr.target,tag=isch.target]

tag @e[tag=pr.target] remove isch.target

# kill @e[tag=Czg,tag=pr.target]
# execute at @e[tag=Rzg,tag=pr.target] run tp @e[tag=Rzg,tag=pr.target] ~ ~-40 ~
# kill @e[tag=Rzg,tag=pr.target]
# execute at @e[tag=check1,tag=pr.target,limit=1] run tp @a[tag=pr.target,tag=part1] ~ ~ ~ 180 0
# execute at @e[tag=check2,tag=pr.target,limit=1] run tp @a[tag=pr.target,tag=part2] ~ ~ ~ 180 0

# function ischool04_plot:logic/spawn_mount

# execute if entity @a[tag=pr.target,tag=kmc,limit=1] as @e[type=zombified_piglin,tag=pr.target] at @s run function ischool04_plot:angry_zpiglin
scoreboard players reset @s isch.dth