execute if score @s kello.player.title_progress matches 0 if score @s kello.player.title_timer matches 0 run function kello:player/tick/title/galaxy_glazed/title
execute if score @s kello.player.title_progress matches 1 if score @s kello.player.title_timer matches 0 run function kello:player/tick/title/galaxy_glazed/guide

execute if score @s kello.player.title_progress matches 2 if score @s kello.player.title_timer matches 0 run function kello:player/tick/title/galaxy_glazed/end
execute if score @s kello.player.cog.l matches 0 run function kello:player/tick/title/galaxy_glazed/end