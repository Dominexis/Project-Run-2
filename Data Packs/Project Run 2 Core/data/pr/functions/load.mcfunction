# Create scoreboard objectives

scoreboard objectives add pr.value dummy
scoreboard objectives add pr.ticks dummy
scoreboard objectives add pr.time dummy
scoreboard objectives add pr.id dummy

scoreboard objectives add pr.plot dummy
scoreboard objectives add pr.plot_previous dummy
scoreboard objectives add pr.plot_x dummy
scoreboard objectives add pr.plot_z dummy
scoreboard objectives add pr.checkpoint_y dummy
scoreboard objectives add pr.checkpoint_side dummy

scoreboard objectives add pr.temp_checkpoint_x dummy
scoreboard objectives add pr.temp_checkpoint_y dummy
scoreboard objectives add pr.temp_checkpoint_z dummy
scoreboard objectives add pr.temp_checkpoint_yaw dummy

scoreboard objectives add pr.death deathCount

scoreboard objectives add pr.mot_x dummy
scoreboard objectives add pr.mot_y dummy
scoreboard objectives add pr.mot_z dummy
scoreboard objectives add pr.prev_mot_x dummy
scoreboard objectives add pr.prev_mot_y dummy
scoreboard objectives add pr.prev_mot_z dummy

scoreboard objectives add pr.stored_invulnerable dummy
scoreboard objectives add pr.gamemode dummy
scoreboard objectives add pr.stop_launch_sound dummy

scoreboard objectives add pr.uuid_0 dummy
scoreboard objectives add pr.uuid_1 dummy
scoreboard objectives add pr.uuid_2 dummy
scoreboard objectives add pr.uuid_3 dummy

scoreboard objectives add lobby trigger
scoreboard objectives add warp trigger
scoreboard objectives add coords trigger
scoreboard objectives add checkpoint trigger
scoreboard objectives add spectate trigger
scoreboard objectives add plot trigger
scoreboard objectives add relative trigger







# Set constants

scoreboard players set #spawn_plot pr.value 1039

scoreboard players set #1 pr.value 1
scoreboard players set #10 pr.value 10
scoreboard players set #100 pr.value 100
scoreboard players set #1000 pr.value 1000
scoreboard players set #10000 pr.value 10000
scoreboard players set #100000 pr.value 100000
scoreboard players set #1000000 pr.value 1000000
scoreboard players set #10000000 pr.value 10000000
scoreboard players set #100000000 pr.value 100000000
scoreboard players set #1000000000 pr.value 1000000000

scoreboard players set #2 pr.value 2
scoreboard players set #4 pr.value 4
scoreboard players set #8 pr.value 8
scoreboard players set #16 pr.value 16
scoreboard players set #32 pr.value 32
scoreboard players set #64 pr.value 64
scoreboard players set #128 pr.value 128
scoreboard players set #256 pr.value 256
scoreboard players set #512 pr.value 512
scoreboard players set #1024 pr.value 1024
scoreboard players set #2048 pr.value 2048
scoreboard players set #4096 pr.value 4096
scoreboard players set #8192 pr.value 8192
scoreboard players set #16384 pr.value 16384
scoreboard players set #32768 pr.value 32768
scoreboard players set #65536 pr.value 65536
scoreboard players set #131072 pr.value 131072
scoreboard players set #262144 pr.value 262144
scoreboard players set #524288 pr.value 524288
scoreboard players set #1048576 pr.value 1048576
scoreboard players set #2097152 pr.value 2097152
scoreboard players set #4194304 pr.value 4194304
scoreboard players set #8388608 pr.value 8388608
scoreboard players set #16777216 pr.value 16777216
scoreboard players set #33554432 pr.value 33554432
scoreboard players set #67108864 pr.value 67108864
scoreboard players set #134217728 pr.value 134217728
scoreboard players set #268435456 pr.value 268435456
scoreboard players set #536870912 pr.value 536870912
scoreboard players set #1073741824 pr.value 1073741824
scoreboard players set #-2147483648 pr.value -2147483648

scoreboard players set #-1 pr.value -1
scoreboard players set #3 pr.value 3
scoreboard players set #5 pr.value 5
scoreboard players set #6 pr.value 6
scoreboard players set #7 pr.value 7
scoreboard players set #9 pr.value 9
scoreboard players set #15 pr.value 15
scoreboard players set #20 pr.value 20
scoreboard players set #25 pr.value 25
scoreboard players set #45 pr.value 45
scoreboard players set #50 pr.value 50
scoreboard players set #60 pr.value 60
scoreboard players set #90 pr.value 90
scoreboard players set #96 pr.value 96
scoreboard players set #180 pr.value 180
scoreboard players set #360 pr.value 360
scoreboard players set #250 pr.value 250
scoreboard players set #500 pr.value 500
scoreboard players set #720 pr.value 720
scoreboard players set #900 pr.value 900
scoreboard players set #1570 pr.value 1570
scoreboard players set #1800 pr.value 1800
scoreboard players set #2000 pr.value 2000
scoreboard players set #2500 pr.value 2500
scoreboard players set #3141 pr.value 3141
scoreboard players set #3600 pr.value 3600
scoreboard players set #4000 pr.value 4000
scoreboard players set #5040 pr.value 5040
scoreboard players set #6283 pr.value 6283

scoreboard players set #lcg_multiplier pr.value 1664525
scoreboard players set #lcg_increment pr.value 1013904223

scoreboard players set #input pr.value 0
function pr:generic/rng/predicate
scoreboard players operation #lcg pr.value = #output pr.value







# Add teams

team add pr.no_collision
team modify pr.no_collision collisionRule never
team modify pr.no_collision seeFriendlyInvisibles false







# Initialize world border timer

scoreboard players add #world_border_reset_timer pr.value 0
scoreboard players add #time pr.value 0

execute store result score #world_border_diameter pr.value run worldborder get
scoreboard players operation #previous_world_border_diameter pr.value = #world_border_diameter pr.value







# Add teams

team add pr.player
team modify pr.player displayName {"text":"Player","color":"green"}
team modify pr.player color green
team modify pr.player friendlyFire false
team modify pr.player collisionRule pushOwnTeam

team add pr.spectator
team modify pr.spectator displayName {"text":"Spectator","color":"gray"}
team modify pr.spectator color gray
team modify pr.spectator friendlyFire false
team modify pr.spectator collisionRule never







# Set gamerules

gamerule doImmediateRespawn true
gamerule mobGriefing false
gamerule commandModificationBlockLimit 2147483647
gamerule maxCommandChainLength 2147483647







# Initialize storage

data modify storage pr:data tag set value {}