scoreboard players add @s rko.box 1
tp @s[scores={rko.box=20..}] ~0.1 ~ ~
tp @s[tag=rko_box_rev,scores={rko.box=20..}] ~-0.1 ~ ~

tp @s[scores={rko.box=160..}] ~ ~-1000 ~
kill @s[tag=!rko_box_main,scores={rko.box=160..}]
kill @s[scores={rko.box=200..}]
return 1