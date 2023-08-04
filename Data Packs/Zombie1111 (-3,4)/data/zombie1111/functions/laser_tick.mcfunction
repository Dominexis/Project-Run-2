



#handle bullets
#particels
particle dust_color_transition 2 1 0 1 1 1 1 ^ ^ ^ 0 0 0 0 1 force @a
particle dust_color_transition 2 1 0 1 1 1 1 ^ ^ ^-0.25 0 0 0 0 1 force @a
particle dust_color_transition 2 1 0 1 1 1 1 ^ ^ ^-0.5 0 0 0 0 1 force @a
particle dust_color_transition 2 1 0 1 1 1 1 ^ ^ ^-0.75 0 0 0 0 1 force @a
particle dust_color_transition 2 1 0 1 1 1 1 ^ ^ ^-1.0 0 0 0 0 1 force @a
particle dust_color_transition 2 1 0 1 1 1 1 ^ ^ ^-1.25 0 0 0 0 1 force @a

#get target rotation for bullet
summon armor_stand ~ ~ ~ {Tags:["zombieNew"],NoGravity:1b,Invisible:1b,Invulnerable:1b}
execute store result score thisId zombie_id run scoreboard players get @s zombie_id
execute as @e[type=marker,tag=zombieLaserTarget] if score @s zombie_id = thisId zombie_id run tag @s add zombieTargetPos
tp @e[type=armor_stand,tag=zombieNew,limit=1] ~ ~ ~ facing entity @e[type=marker,tag=zombieTargetPos,limit=1] feet

#move bullet forward and slowly rotate towards target
execute anchored eyes rotated as @e[type=armor_stand,tag=zombieNew,limit=1] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^10 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^1.5 ~ ~
kill @e[type=armor_stand,tag=zombieNew,limit=1]

#collision
scoreboard players remove @s zombie_lifeTime 1
execute unless block ~ ~ ~ #zombie1111:no_collision run function zombie1111:laser_hit
execute if entity @e[type=marker,distance=..1,tag=zombieTargetPos,limit=1] run function zombie1111:laser_hit
execute if score @s zombie_lifeTime matches ..0 run function zombie1111:laser_hit
tag @e[type=marker,tag=zombieTargetPos] remove zombieTargetPos


