execute if score @s kello.player.title_progress matches 0 if score @s kello.player.title_timer matches 0 run function kello:player/tick/title/galaxy_recoil_guide/title

execute if score @s kello.player.title_progress matches 1 if score @s kello.player.title_timer matches 0 run function kello:player/tick/title/galaxy_recoil_guide/end
execute if score @s kello.player.cog.l matches 1 run function kello:player/tick/title/galaxy_recoil_guide/end

execute if entity @s[tag=kello.death.was_transitioning] run function kello:player/tick/title/galaxy_recoil_guide/start
return 1