execute unless score @s inquognito.gun.cooldown matches 1.. if entity @s[scores={inquognito.use=1..},nbt={SelectedItem:{tag:{inquognito.gun:1}}}] anchored eyes run function inquognito:logic/abilities/gun/activate

scoreboard players remove @s[scores={inquognito.gun.augments.nova_cooldown=1..}] inquognito.gun.augments.nova_cooldown 1
execute if score @s inquognito.gun.cooldown matches 1.. run function inquognito:logic/abilities/gun/cooldown
