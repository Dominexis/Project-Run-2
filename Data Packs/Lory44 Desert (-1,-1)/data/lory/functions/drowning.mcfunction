

tellraw @s {"text":"Watch out! You could have drowned!","color":"red","type":"text"}
playsound minecraft:entity.player.splash master @s ~ ~ ~ 100 2 1
trigger checkpoint


return 1