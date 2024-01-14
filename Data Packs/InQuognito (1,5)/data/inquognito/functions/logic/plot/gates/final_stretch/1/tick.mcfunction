scoreboard players add @s inquognito.temp 1
scoreboard players operation #modulo inquognito.temp = @s inquognito.temp
scoreboard players operation #modulo inquognito.temp %= #2 pr.value

execute if score #modulo inquognito.temp matches 0 as @a[tag=pr.target,scores={inquognito.floor=-1,inquognito.suit=..2}] run function inquognito:logic/plot/gates/final_stretch/1/particles

execute align xyz positioned ^-2 ^-1 ^ as @e[dx=4,scores={inquognito.suit=..2},predicate=inquognito:targets] positioned ^2.5 ^ ^ run function inquognito:logic/plot/gates/block

return 1