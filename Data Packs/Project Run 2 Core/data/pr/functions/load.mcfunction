# Create scoreboard objectives

scoreboard objectives add pr.value dummy
scoreboard objectives add pr.ticks dummy
scoreboard objectives add pr.time dummy

scoreboard objectives add pr.plot dummy
scoreboard objectives add pr.plot_previous dummy
scoreboard objectives add pr.plot_x dummy
scoreboard objectives add pr.plot_z dummy
scoreboard objectives add pr.checkpoint_y dummy
scoreboard objectives add pr.checkpoint_side dummy

scoreboard objectives add pr.death deathCount

scoreboard objectives add lobby trigger
scoreboard objectives add warp trigger
scoreboard objectives add coords trigger
scoreboard objectives add checkpoint trigger
scoreboard objectives add spectate trigger
scoreboard objectives add plot trigger







# Set constants

scoreboard players set #1000 pr.value 1000

scoreboard players set #20 pr.value 20
scoreboard players set #60 pr.value 60
scoreboard players set #96 pr.value 96

scoreboard players set #4 pr.value 4
scoreboard players set #64 pr.value 64
scoreboard players set #65536 pr.value 65536

scoreboard players set #spawn_plot pr.value 1039







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