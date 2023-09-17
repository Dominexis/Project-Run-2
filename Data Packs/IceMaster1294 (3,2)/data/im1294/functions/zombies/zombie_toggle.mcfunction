scoreboard players add Zombies im1294.kill_count 1
scoreboard players operation Zombies im1294.kill_count %= im1294.two im1294.kill_count

execute if score Zombies im1294.kill_count matches 1 run function im1294:zombies/zombie_pink
execute if score Zombies im1294.kill_count matches 0 run function im1294:zombies/zombie_red