# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

# use execute at 0073bfd4-016d-1b4b-0001-320713876e6e to return to plot origin
# (yes, this is an internal Spanish joke, suffer x'P)
summon marker ~ ~ ~ {UUID:[I;7585748,23927627,78343,327642734],CustomName:'{"text":"El Pepe"}'}

execute align xyz run summon armor_stand ~31 ~18 ~36 {Tags:["lory.raft_keeper","lory.npc"],NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2363392}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:26759}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:28533}}},{id:"minecraft:player_head",Count:1b}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{LeftArm:[-26f,00f,0f],RightArm:[-13f,00f,0f]},Rotation:[180f,0f]}

# scoreboards
scoreboard objectives add lory.var dummy
scoreboard objectives add lory.snake_id dummy
scoreboard objectives add lory.drop_raft minecraft.dropped:minecraft.bamboo_raft

# giga bunch of markers for the snake parkour
execute positioned ~-13 ~31.5 ~-3 summon minecraft:marker run function lory:marker/summon
execute positioned ~-12 ~31.5 ~-3 summon minecraft:marker run function lory:marker/summon
execute positioned ~-11 ~31.5 ~-3 summon minecraft:marker run function lory:marker/summon
execute positioned ~-10 ~31.5 ~-3 summon minecraft:marker run function lory:marker/summon
execute positioned ~-10 ~30.5 ~-3 summon minecraft:marker run function lory:marker/summon
execute positioned ~-10 ~29.5 ~-3 summon minecraft:marker run function lory:marker/summon
execute positioned ~-10 ~29.5 ~-2 summon minecraft:marker run function lory:marker/summon
execute positioned ~-10 ~29.5 ~-1 summon minecraft:marker run function lory:marker/summon
execute positioned ~-9 ~29.5 ~-1 summon minecraft:marker run function lory:marker/summon
execute positioned ~-9 ~29.5 ~0 summon minecraft:marker run function lory:marker/summon
execute positioned ~-9 ~30.5 ~0 summon minecraft:marker run function lory:marker/summon
execute positioned ~-9 ~30.5 ~1 summon minecraft:marker run function lory:marker/summon
execute positioned ~-9 ~30.5 ~2 summon minecraft:marker run function lory:marker/summon
execute positioned ~-9 ~29.5 ~2 summon minecraft:marker run function lory:marker/summon
execute positioned ~-9 ~28.5 ~2 summon minecraft:marker run function lory:marker/summon
execute positioned ~-10 ~28.5 ~2 summon minecraft:marker run function lory:marker/summon
execute positioned ~-11 ~28.5 ~2 summon minecraft:marker run function lory:marker/summon
execute positioned ~-12 ~28.5 ~2 summon minecraft:marker run function lory:marker/summon
execute positioned ~-12 ~27.5 ~2 summon minecraft:marker run function lory:marker/summon
execute positioned ~-12 ~26.5 ~2 summon minecraft:marker run function lory:marker/summon
execute positioned ~-12 ~26.5 ~3 summon minecraft:marker run function lory:marker/summon
execute positioned ~-12 ~26.5 ~4 summon minecraft:marker run function lory:marker/summon
execute positioned ~-12 ~26.5 ~5 summon minecraft:marker run function lory:marker/summon
execute positioned ~-12 ~27.5 ~5 summon minecraft:marker run function lory:marker/summon
execute positioned ~-12 ~27.5 ~6 summon minecraft:marker run function lory:marker/summon
execute positioned ~-12 ~27.5 ~7 summon minecraft:marker run function lory:marker/summon
execute positioned ~-12 ~26.5 ~7 summon minecraft:marker run function lory:marker/summon
execute positioned ~-12 ~26.5 ~8 summon minecraft:marker run function lory:marker/summon
execute positioned ~-12 ~26.5 ~9 summon minecraft:marker run function lory:marker/summon
execute positioned ~-12 ~25.5 ~9 summon minecraft:marker run function lory:marker/summon
execute positioned ~-11 ~25.5 ~9 summon minecraft:marker run function lory:marker/summon
execute positioned ~-10 ~25.5 ~9 summon minecraft:marker run function lory:marker/summon
execute positioned ~-9 ~25.5 ~9 summon minecraft:marker run function lory:marker/summon
execute positioned ~-9 ~24.5 ~9 summon minecraft:marker run function lory:marker/summon
execute positioned ~-9 ~23.5 ~9 summon minecraft:marker run function lory:marker/summon
execute positioned ~-9 ~23.5 ~8 summon minecraft:marker run function lory:marker/summon
execute positioned ~-9 ~23.5 ~7 summon minecraft:marker run function lory:marker/summon
execute positioned ~-9 ~23.5 ~6 summon minecraft:marker run function lory:marker/summon
execute positioned ~-9 ~24.5 ~6 summon minecraft:marker run function lory:marker/summon
execute positioned ~-10 ~24.5 ~6 summon minecraft:marker run function lory:marker/summon
execute positioned ~-11 ~24.5 ~6 summon minecraft:marker run function lory:marker/summon
execute positioned ~-12 ~24.5 ~6 summon minecraft:marker run function lory:marker/summon
execute positioned ~-13 ~24.5 ~6 summon minecraft:marker run function lory:marker/summon
execute positioned ~-13 ~23.5 ~6 summon minecraft:marker run function lory:marker/summon
execute positioned ~-13 ~22.5 ~6 summon minecraft:marker run function lory:marker/summon
execute positioned ~-13 ~21.5 ~6 summon minecraft:marker run function lory:marker/summon
execute positioned ~-13 ~21.5 ~7 summon minecraft:marker run function lory:marker/summon
execute positioned ~-13 ~21.5 ~8 summon minecraft:marker run function lory:marker/summon
execute positioned ~-13 ~22.5 ~8 summon minecraft:marker run function lory:marker/summon
execute positioned ~-12 ~22.5 ~8 summon minecraft:marker run function lory:marker/summon
execute positioned ~-11 ~22.5 ~8 summon minecraft:marker run function lory:marker/summon
execute positioned ~-11 ~21.5 ~8 summon minecraft:marker run function lory:marker/summon
execute positioned ~-11 ~20.5 ~8 summon minecraft:marker run function lory:marker/summon
execute positioned ~-11 ~20.5 ~7 summon minecraft:marker run function lory:marker/summon
execute positioned ~-11 ~19.5 ~7 summon minecraft:marker run function lory:marker/summon
execute positioned ~-11 ~18.5 ~7 summon minecraft:marker run function lory:marker/summon
execute positioned ~-11 ~18.5 ~6 summon minecraft:marker run function lory:marker/summon
execute positioned ~-11 ~18.5 ~5 summon minecraft:marker run function lory:marker/summon
execute positioned ~-11 ~18.5 ~4 summon minecraft:marker run function lory:marker/summon
execute positioned ~-11 ~18.5 ~3 summon minecraft:marker run function lory:marker/summon
execute positioned ~-11 ~19.5 ~3 summon minecraft:marker run function lory:marker/summon
execute positioned ~-11 ~20.5 ~3 summon minecraft:marker run function lory:marker/summon
execute positioned ~-11 ~20.5 ~2 summon minecraft:marker run function lory:marker/summon


# set constants
### [IMPORTANT]: This value changes the lenght of the snake
scoreboard players set $snake_lenght lory.var 6

### [IMPORTANT]: This value changes the seconds of the snake timer rhythm
scoreboard players set $snake_rhythm lory.var 3

# set derivated constant for snake parkour
scoreboard players set $snake_timer.max lory.var 64
scoreboard players operation $snake_timer.max lory.var += $snake_lenght lory.var


