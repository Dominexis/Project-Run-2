# Import things

from pathlib import Path
import json



# Initialize variables

PROGRAM_PATH = Path(__file__).parent
DATA_PACK_PATH = PROGRAM_PATH / "Data Packs" / "Project Run 2 Core"
# namespace, y coordinate, icon, name, description
NAMESPACES = {
    (-2,-6): ("eosand", 0),
    (-2,-1): ("time_stream", 0),
    (-1,-3): ("itspungpond98", 0, "minecraft:verdant_froglight", "The Froglight Town", "Find the froglights by following the trails, and exit through the gates"),
    (-1,5): ("funkytoc_moon", 1),
    (1,3): ("theswagunicorn", 0),
    (2,3): ("eli_marie", 1, "minecraft:red_mushroom", "Mushylands", "Fun in the tunnels")
}



# Open file

with (PROGRAM_PATH / "Plots.txt").open("r", encoding="utf-8") as file:
    plots = file.read().split("\n")



# Compile list of plot coords

coordinates: list[tuple[int]] = []
for z in range(-16, 17):
    for x in range(-16, 17):
        if plots[2*z + 32][2*x + 32] == "0":
            coordinates.append((x,z))

print(coordinates)



# Generate ticking function

commands: list[str] = []
for coordinate in coordinates:
    if coordinate in NAMESPACES:
        namespace = NAMESPACES[coordinate][0]
        comment = ""
    else:
        namespace = "namespace"
        comment = "#"

    commands.append(
        f'execute store result score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value positioned {coordinate[0]*96 - 8}.0 -64 {coordinate[1]*96 - 8}.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]\n' +
        f'{comment}execute unless score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value = #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value positioned {coordinate[0]*96 - 8}.0 -64 {coordinate[1]*96 - 8}.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target\n' +
        f'{comment}execute if score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value matches 1 if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 0 positioned {coordinate[0]*96 + 40} 0 {coordinate[1]*96 + 40} run function {namespace}:plot_on\n' +
        f'{comment}execute if score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value matches 0 if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 1 positioned {coordinate[0]*96 + 40} 0 {coordinate[1]*96 + 40} run function {namespace}:plot_off\n' +
        f'{comment}execute unless score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value = #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value run tag @e[tag=pr.target] remove pr.target\n' +
        f'scoreboard players operation #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value = #plot_player_{coordinate[0]}_{coordinate[1]} pr.value\n' +
        f'execute if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 1 positioned {coordinate[0]*96 - 6}.0 -64 {coordinate[1]*96 - 6}.0 run scoreboard players set @a[dx=93,dy=383,dz=93,tag=!pr.spectator] pr.plot {(coordinate[0] + 16) + (coordinate[1] + 16)*64}\n' +
        f'{comment}execute if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 1 positioned {coordinate[0]*96 - 6}.0 -64 {coordinate[1]*96 - 6}.0 run tag @e[dx=93,dy=383,dz=93,tag=!pr.spectator] add pr.target\n' +
        f'{comment}execute if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move\n' +
        f'{comment}execute if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 1 positioned {coordinate[0]*96 + 40} 0 {coordinate[1]*96 + 40} run function {namespace}:tick_plot\n' +
        f'{comment}execute if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 1 run tag @e[tag=pr.target] remove pr.target'
    )

with (DATA_PACK_PATH / "data" / "pr" / "functions" / "plot" / "main.mcfunction").open("w", encoding="utf-8") as file:
    file.write(
        "# Tick plots\n\n" +
        "\n\n\n\n".join(commands)
    )



# Generate enter function

commands: list[str] = []
for coordinate in coordinates:
    if coordinate in NAMESPACES:
        namespace = NAMESPACES[coordinate][0]
        checkpoint_y = NAMESPACES[coordinate][1]
        comment = ""
    else:
        namespace = "namespace"
        checkpoint_y = 0
        comment = "#"

    east  = plots[coordinate[1]*2 + 32    ][coordinate[0]*2 + 32 + 1] == "<"
    west  = plots[coordinate[1]*2 + 32    ][coordinate[0]*2 + 32 - 1] == ">"
    south = plots[coordinate[1]*2 + 32 + 1][coordinate[0]*2 + 32    ] == "^"
    north = plots[coordinate[1]*2 + 32 - 1][coordinate[0]*2 + 32    ] == "v"

    if east + west + south + north == 1:
        side = f'execute if score @s pr.plot_x matches {coordinate[0]} if score @s pr.plot_z matches {coordinate[1]} run scoreboard players set @s pr.checkpoint_side {["0", "1", "2", "3"][east*0 + west*1 + south*2 + north*3]}'
    elif east and west:
        side = (
            f'execute if score @s pr.plot_x matches {coordinate[0]} if score @s pr.plot_z matches {coordinate[1]} run scoreboard players set @s[predicate=pr:side/east] pr.checkpoint_side 0\n' +
            f'execute if score @s pr.plot_x matches {coordinate[0]} if score @s pr.plot_z matches {coordinate[1]} run scoreboard players set @s[predicate=pr:side/west] pr.checkpoint_side 1'
        )
    elif south and north:
        side = (
            f'execute if score @s pr.plot_x matches {coordinate[0]} if score @s pr.plot_z matches {coordinate[1]} run scoreboard players set @s[predicate=pr:side/south] pr.checkpoint_side 2\n' +
            f'execute if score @s pr.plot_x matches {coordinate[0]} if score @s pr.plot_z matches {coordinate[1]} run scoreboard players set @s[predicate=pr:side/north] pr.checkpoint_side 3'
        )
    else:
        side = f'execute if score @s pr.plot_x matches {coordinate[0]} if score @s pr.plot_z matches {coordinate[1]} run scoreboard players set @s pr.checkpoint_side -1'

    commands.append(
        f'{comment}execute if score @s pr.plot_x matches {coordinate[0]} if score @s pr.plot_z matches {coordinate[1]} run function {namespace}:enter\n' +
        f'execute if score @s pr.plot_x matches {coordinate[0]} if score @s pr.plot_z matches {coordinate[1]} run scoreboard players set @s pr.checkpoint_y {"-4" if coordinate == (-1, 0) else checkpoint_y}\n' +
        side
    )

with (DATA_PACK_PATH / "data" / "pr" / "functions" / "plot" / "enter.mcfunction").open("w", encoding="utf-8") as file:
    file.write(
        "# Execute enter functions\n\n" +
        "\n\n\n".join(commands)
    )



# Generate exit function

commands: list[str] = []
for coordinate in coordinates:
    if coordinate in NAMESPACES:
        namespace = NAMESPACES[coordinate][0]
        comment = ""
    else:
        namespace = "namespace"
        comment = "#"

    commands.append(
        f'{comment}execute if score @s pr.plot_x matches {coordinate[0]} if score @s pr.plot_z matches {coordinate[1]} run function {namespace}:exit'
    )

with (DATA_PACK_PATH / "data" / "pr" / "functions" / "plot" / "exit.mcfunction").open("w", encoding="utf-8") as file:
    file.write(
        "# Execute exit functions\n\n" +
        "\n".join(commands) + "\n"*8 +
        "# Clear things off of the player\n\n" +
        "clear @s\n" +
        "effect clear @s" + "\n"*8 +
        "# Send message when they start their run\n\n" +
        f'execute if score @s pr.plot_x matches -1 if score @s pr.plot_z matches 0 run tellraw @s {{"text":"Your run has begun","color":"gold"}}\n' +
        f'execute if score @s pr.plot_x matches -1 if score @s pr.plot_z matches 0 run tellraw @s [{{"text":"Use ","color":"gray"}},{{"text":"/trigger lobby","color":"white"}},{{"text":" to return to the lobby","color":"gray"}}]\n' +
        f'execute if score @s pr.plot_x matches -1 if score @s pr.plot_z matches 0 run tellraw @s [{{"text":"Use ","color":"gray"}},{{"text":"/trigger checkpoint","color":"white"}},{{"text":" to go to the previous checkpoint","color":"gray"}}]' + "\n"*8 +
        "# Grant advancements\n\n" +
        "function pr:plot/advancement"
    )



# Generate recall function

commands: list[str] = []
for coordinate in coordinates:
    if coordinate in NAMESPACES:
        namespace = NAMESPACES[coordinate][0]
        comment = ""
    else:
        namespace = "namespace"
        comment = "#"

    commands.append(
        f'{comment}execute if score @s pr.plot_x matches {coordinate[0]} if score @s pr.plot_z matches {coordinate[1]} run function {namespace}:recall'
    )

with (DATA_PACK_PATH / "data" / "pr" / "functions" / "player" / "checkpoint" / "recall.mcfunction").open("w", encoding="utf-8") as file:
    file.write(
        "# Execute recall functions\n\n" +
        "\n".join(commands)
    )



# Generate advancement function

commands: list[str] = []
for coordinate in coordinates:
    commands.append(
        f'execute if score @s pr.plot_x matches {coordinate[0]} if score @s pr.plot_z matches {coordinate[1]} unless score @s pr.plot = #spawn_plot pr.value run advancement grant @s only pr:plot_{str(coordinate[0]).replace("-", "n")}_{str(coordinate[1]).replace("-", "n")}'
    )

with (DATA_PACK_PATH / "data" / "pr" / "functions" / "plot" / "advancement.mcfunction").open("w", encoding="utf-8") as file:
    file.write(
        "# Grant advancements\n\n" +
        "\n".join(commands)
    )



# Generate leaderboard name function

commands: list[str] = []
for coordinate in coordinates:
    if coordinate in NAMESPACES and len(NAMESPACES[coordinate]) > 2:
        name = NAMESPACES[coordinate][3]
    else:
        name = f'{coordinate[0]}, {coordinate[1]} Ending'

    if (
        plots[coordinate[1]*2 + 32    ][coordinate[0]*2 + 32 + 1] == ">" or
        plots[coordinate[1]*2 + 32    ][coordinate[0]*2 + 32 - 1] == "<" or
        plots[coordinate[1]*2 + 32 + 1][coordinate[0]*2 + 32    ] == "v" or
        plots[coordinate[1]*2 + 32 - 1][coordinate[0]*2 + 32    ] == "^"
    ) and not coordinate == (-1, 0):
        continue

    if coordinate == (-1, 0):
        commands.append(
            f'# {coordinate[0]}, {coordinate[1]}\n' +
            f'execute if score #plot pr.value matches {(coordinate[0] + 16) + (coordinate[1] + 16)*64} run data modify storage pr:data tag.leaderboard_name set value \'{{"text":"Main"}}\''
        )
    else: 
        commands.append(
            f'# {coordinate[0]}, {coordinate[1]}\n' +
            f'execute if score #plot pr.value matches {(coordinate[0] + 16) + (coordinate[1] + 16)*64} run data modify storage pr:data tag.leaderboard_name set value \'{{"text":"{name}"}}\''
        )

with (DATA_PACK_PATH / "data" / "pr" / "functions" / "leaderboard" / "name.mcfunction").open("w", encoding="utf-8") as file:
    file.write(
        "# Set name\n\n" +
        "\n".join(commands)
    )



# Generate leaderboard reset function

commands: list[str] = []
for coordinate in coordinates:
    if (
        plots[coordinate[1]*2 + 32    ][coordinate[0]*2 + 32 + 1] == ">" or
        plots[coordinate[1]*2 + 32    ][coordinate[0]*2 + 32 - 1] == "<" or
        plots[coordinate[1]*2 + 32 + 1][coordinate[0]*2 + 32    ] == "v" or
        plots[coordinate[1]*2 + 32 - 1][coordinate[0]*2 + 32    ] == "^"
    ):
        continue

    commands.append(
        f'scoreboard players set #plot pr.value {(coordinate[0] + 16) + (coordinate[1] + 16)*64}\n' +
        f'execute positioned {coordinate[0]*4 + 40 - 96} -46 {coordinate[1]*4 + 40} run function pr:leaderboard/spawn/main'
    )

with (DATA_PACK_PATH / "data" / "pr" / "functions" / "leaderboard" / "reset.mcfunction").open("w", encoding="utf-8") as file:
    file.write(
        "# Reset leaderboard\n\n" +
        "kill @e[type=armor_stand ,tag=pr.leaderboard]\n\n" +
        "kill @e[type=text_display,tag=pr.leaderboard]\n\n" +
        "kill @e[type=marker      ,tag=pr.leaderboard]\n\n" +
        "scoreboard players operation #plot pr.value = #spawn_plot pr.value\n" +
        f"execute positioned {36 - 96} -46 40 run function pr:leaderboard/spawn/main\n\n" +
        "\n".join(commands)
    )



# Generate advancements

for coordinate in coordinates:
    if coordinate in NAMESPACES and len(NAMESPACES[coordinate]) > 2:
        item = NAMESPACES[coordinate][2]
        name = NAMESPACES[coordinate][3]
        description = NAMESPACES[coordinate][4]
    else:
        item = "minecraft:diamond"
        name = f"Section {coordinate[0]}, {coordinate[1]}"
        description = "Complete this section"

    if coordinate == (-1, 0):
        continue

    exit_count = (
        ( plots[coordinate[1]*2 + 32    ][coordinate[0]*2 + 32 + 1] == ">" ) +
        ( plots[coordinate[1]*2 + 32    ][coordinate[0]*2 + 32 - 1] == "<" ) +
        ( plots[coordinate[1]*2 + 32 + 1][coordinate[0]*2 + 32    ] == "v" ) +
        ( plots[coordinate[1]*2 + 32 - 1][coordinate[0]*2 + 32    ] == "^" )
    )

    if exit_count == 0:
        frame = "challenge"
    elif exit_count == 1:
        frame = "task"
    else:
        frame = "goal"

    parent = (-1, 0)
    if plots[coordinate[1]*2 + 32    ][coordinate[0]*2 + 32 + 1] == "<":
        parent = (coordinate[0] + 1, coordinate[1]    )
    if plots[coordinate[1]*2 + 32    ][coordinate[0]*2 + 32 - 1] == ">":
        parent = (coordinate[0] - 1, coordinate[1]    )
    if plots[coordinate[1]*2 + 32 + 1][coordinate[0]*2 + 32    ] == "^":
        parent = (coordinate[0]    , coordinate[1] + 1)
    if plots[coordinate[1]*2 + 32 - 1][coordinate[0]*2 + 32    ] == "v":
        parent = (coordinate[0]    , coordinate[1] - 1)
    if parent == (-1, 0):
        parent = "pr:root"
    else:
        parent = f"pr:plot_{parent[0]}_{parent[1]}".replace("-", "n")

    with (DATA_PACK_PATH / "data" / "pr" / "advancements" / f'plot_{coordinate[0]}_{coordinate[1]}.json'.replace("-", "n")).open("w", encoding="utf-8") as file:
        json.dump(
            {
                "display": {
                    "icon": {
                        "item": item
                    },
                    "title": [
                        {"text": name, "color": "white"}
                    ],
                    "frame": frame,
                    "description": [
                        {"text": description, "color":"green"}
                    ],
                    "show_toast": (True if exit_count == 0 else False),
                    "announce_to_chat": False,
                    "hidden": False
                },
                "parent": parent,
                "criteria": {
                    "tick": {
                        "trigger": "minecraft:impossible"
                    }
                }
            },
            file,
            indent=4
        )



print("Functions generated")
input()