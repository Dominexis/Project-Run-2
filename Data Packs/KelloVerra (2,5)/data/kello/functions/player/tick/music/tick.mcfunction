# Timer

execute unless score @s kello.player.music_progress = @s kello.player.music_progress run function kello:player/tick/music/init

execute if entity @s[tag=kello.will_transition] run function kello:player/tick/music/transition/tick

execute if score @s kello.player.music_progress matches 0 run function kello:player/tick/music/intro/tick
execute if score @s kello.player.music_progress matches 1 run function kello:player/tick/music/melody/tick
execute if score @s kello.player.music_progress matches 2 run function kello:player/tick/music/final/tick
execute if score @s kello.player.music_progress matches 3 run function kello:player/tick/music/outro/tick