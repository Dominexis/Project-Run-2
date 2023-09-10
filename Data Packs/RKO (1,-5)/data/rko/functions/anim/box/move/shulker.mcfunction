scoreboard players add @s rko.box 1
tp @s[scores={rko.box=20..}] ~0.1 ~ ~
tp @s[scores={rko.box=20..},tag=rko_box_rev] ~-0.1 ~ ~

tp @s[scores={rko.box=160..}] ~ ~-1000 ~
kill @s[scores={rko.box=160..},tag=!rko_box_main]
kill @s[scores={rko.box=200..}]