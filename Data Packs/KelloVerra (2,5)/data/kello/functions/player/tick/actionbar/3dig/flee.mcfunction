function help:c225a8683ad3e3652de5cc35628860eef8abcbdb6731b599d78d8abe9a8ec32c

execute if entity @s[tag=kello.player.flee_revertable] run scoreboard players set @s kello.entity.state 2
execute if entity @s[tag=kello.player.grappling] run scoreboard players set @s kello.entity.state 0
return 1