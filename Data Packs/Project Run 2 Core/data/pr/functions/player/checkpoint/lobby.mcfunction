# Set checkpoint scores

tag @s remove pr.hide_timer
tag @s remove pr.pause_timer
tag @s remove pr.temp_checkpoint
tag @s remove pr.self_checkpoint
tag @s remove pr.plate_checkpoint

function pr:plot/exit

scoreboard players operation @s pr.plot = #spawn_plot pr.value
scoreboard players operation @s pr.plot_previous = @s pr.plot
scoreboard players set @s pr.checkpoint_y -4
scoreboard players set @s pr.checkpoint_side -1

function pr:player/plot/coords_from_id

execute if score @s lobby matches 1.. run function pr:player/checkpoint/send_to
execute if score @s lobby matches 1.. run team join pr.player @s
execute if score @s lobby matches 1.. run gamemode adventure @s
execute if score @s lobby matches 1.. run tellraw @s {"text":"You've been sent to the lobby","color":"gold"}
execute if score @s lobby matches 1.. run title @s actionbar ""
scoreboard players set @s lobby 0

execute at @s align xyz run spawnpoint @s ~0.5 ~ ~0.5 ~

function pr:player/title