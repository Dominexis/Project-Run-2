# This function will run every tick while players are in your plot on the center block at Y=0
execute positioned ~14 ~1 ~-3 run tag @a[tag=pr.target,tag=!lory.playing,dx=4.5,dy=1,dz=4] add lory.playing
execute positioned ~20 ~1 ~-2 run tag @a[tag=pr.target,tag=lory.playing,dx=1,dy=1,dz=4] remove lory.playing
execute if score gamestate lory matches 1 run function lory:tick_game
execute if score gamestate lory matches 0 if entity @a[tag=lory.playing,tag=pr.target] run function lory:run_start