# Initial sound distance
# execute if score @s ykw.countup matches 0..5 run execute as @e[distance=..8] run function ykw:sound_src/mark_entity
# execute if score @s ykw.countup matches 0..5 run scoreboard players set @s ykw.countup 5

# Sound expand
execute if score @s ykw.countup matches 1 as @e[tag=pr.target,distance=0..1] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 2 as @e[tag=pr.target,distance=1..2] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 3 as @e[tag=pr.target,distance=2..3] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 4 as @e[tag=pr.target,distance=3..4] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 5 as @e[tag=pr.target,distance=4..5] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 6 as @e[tag=pr.target,distance=5..6] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 7 as @e[tag=pr.target,distance=6..7] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 8 as @e[tag=pr.target,distance=7..8] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 9 as @e[tag=pr.target,distance=8..9] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 10 as @e[tag=pr.target,distance=9..10] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 11 as @e[tag=pr.target,distance=10..11] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 12 as @e[tag=pr.target,distance=11..12] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 13 as @e[tag=pr.target,distance=12..13] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 14 as @e[tag=pr.target,distance=13..14] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 15 as @e[tag=pr.target,distance=14..15] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 16 as @e[tag=pr.target,distance=15..16] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 17 as @e[tag=pr.target,distance=16..17] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 18 as @e[tag=pr.target,distance=17..18] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 19 as @e[tag=pr.target,distance=18..19] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 20 as @e[tag=pr.target,distance=19..20] run function ykw:sound_src/mark_entity

# End condition
execute if score @s ykw.countup >= @s ykw.ecolocation run kill @s 