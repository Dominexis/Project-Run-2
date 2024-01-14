scoreboard players remove lengthInner inquognito.temp 1

execute if score lengthInner inquognito.temp matches ..0 run function inquognito:logic/abilities/gun/augments/trinity/raycast/end
execute if score lengthInner inquognito.temp matches 1.. positioned ^ ^ ^0.1 run function inquognito:logic/abilities/gun/augments/trinity/raycast/loop_inner

return 1