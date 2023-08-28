scoreboard players remove lengthInner inquognito.temp 1

execute if score lengthInner inquognito.temp matches ..0 run function inquognito:logic/abilities/gun/augments/trinity/raycast/end
execute if score lengthInner inquognito.temp matches 1.. positioned ^ ^ ^0.0005 run function inquognito:logic/abilities/gun/augments/trinity/raycast/loop_inner
