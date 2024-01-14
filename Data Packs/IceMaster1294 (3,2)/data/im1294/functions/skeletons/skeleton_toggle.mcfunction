scoreboard players add Skeletons im1294.kill_count 1
scoreboard players operation Skeletons im1294.kill_count %= im1294.two im1294.kill_count

execute if score Skeletons im1294.kill_count matches 1 run function im1294:skeletons/skeleton_blue
execute if score Skeletons im1294.kill_count matches 0 run function im1294:skeletons/skeleton_lb
return 1