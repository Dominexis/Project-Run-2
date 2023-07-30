execute unless score @s inquognito.gun.cooldown matches 1.. if entity @s[scores={inquognito.use=1..},nbt={SelectedItem:{tag:{inquognito.gun:1}}}] anchored eyes run function inquognito:logic/abilities/gun/activate

execute if score @s inquognito.gun.cooldown matches 1.. run function inquognito:logic/abilities/gun/cooldown
