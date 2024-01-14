# Initial sound distance
# execute if score @s ykw.countup matches 0..5 run execute as @e[distance=..8] run function ykw:sound_src/mark_entity
# execute if score @s ykw.countup matches 0..5 run scoreboard players set @s ykw.countup 5

# Sound expand
execute if score @s ykw.countup matches 1 as @e[distance=0..1,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 2 as @e[distance=1..2,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 3 as @e[distance=2..3,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 4 as @e[distance=3..4,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 5 as @e[distance=4..5,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 6 as @e[distance=5..6,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 7 as @e[distance=6..7,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 8 as @e[distance=7..8,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 9 as @e[distance=8..9,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 10 as @e[distance=9..10,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 11 as @e[distance=10..11,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 12 as @e[distance=11..12,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 13 as @e[distance=12..13,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 14 as @e[distance=13..14,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 15 as @e[distance=14..15,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 16 as @e[distance=15..16,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 17 as @e[distance=16..17,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 18 as @e[distance=17..18,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 19 as @e[distance=18..19,tag=pr.target] run function ykw:sound_src/mark_entity
execute if score @s ykw.countup matches 20 as @e[distance=19..20,tag=pr.target] run function ykw:sound_src/mark_entity

# End condition
execute if score @s ykw.countup >= @s ykw.ecolocation run kill @s
return 1