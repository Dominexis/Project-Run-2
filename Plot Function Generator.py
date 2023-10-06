# Import things

from pathlib import Path
import json



# Initialize variables

PROGRAM_PATH = Path(__file__).parent
DATA_PACK_PATH = PROGRAM_PATH / "Data Packs" / "Project Run 2 Core"
# namespace, y coordinate, forceload bool, icon, name, description, item NBT
NAMESPACES = {
    (-6,-2): ("andreyhero", 0, False, "minecraft:grass_block", "Parkour Cube Mini", "Enjoy nostalgic parkour, just relax, and chill.\n\n§6AndreyHero & Spaghetti099 & Sk0ck0 & Bindabash79"),
    (-6,2): ("corruptide_city", 0, True, "minecraft:black_glazed_terracotta", "§kO§r Corruptide City §kO§r", "It takes one smart parkourist to take down The Manager of this corrupt city!\n\n§6CoreOptd"),
    (-5,-3): ("bowshot", 0, False, "minecraft:moss_block", "Wasteland", "Be careful of the toxic waste!\n\n§6Bowshot"),
    (-5,-2): ("artem", 0, False, "minecraft:blue_dye", "Muddy Place", "Parkour through swamp islands.\n\n§6Artem & _TheSwagUnicorn_", '{CustomModelData:1985}'),
    (-5,-1): ("mathtriqueur", 2, False, "minecraft:stone_bricks", "Upside-down Town", "\"Don't look down\" and \"Don't stare at the sun\" mean the same thing around here.\n\n§6Mathtriqueur"),
    (-5,1): ("dtplayers", 0, True, "minecraft:end_stone", "Space Escape", "Escape a remote planetary mining base after a mysterious infestation damages the oxygen plant.\n\n§6DTplayers"),
    (-5,2): ("lory_water", 0, True, "minecraft:water_bucket", "The Pit", "Parkour out of the pit, but don't fall into the water!\n\n§6ReynTheStrange & _Lory44 & mmmmmaaaaaxxxxx"),
    (-5,3): ("earthmere", 4, True, "minecraft:amethyst_shard", "Shard of\nEarthmere", "A shard of the land once occupied by thee, left to wither by order of decree.\n\n§6EyeCloud & Kassar & Owca"),
    (-4,-3): ("xekyt", 0, False, "minecraft:quartz_block", "Lab Leap", "Navigate through a dangerous lab!\n\n§6XeKyT & _TheSwagUnicorn_"),
    (-4,-2): ("fuzzbearplush", 0, False, "minecraft:lime_wool", "Koopa Course", "Jump your way to the flag pole!\n\n§6Fuzzbearplush"),
    (-4,-1): ("warshito", 4, True, "minecraft:player_head", "Chromatic Climb", "Follow your color, collect the orb, and save the world!\n\n§6Warshito & Jalafito", '{SkullOwner:{Id:[I;2056400680,994658796,-2146643889,-245245515],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTVkMWYxM2NiM2NlMjRkYzRmZTM0ZjJiOWJhNDY0ZmEyYzAwMzFiNDUwNWJkOGM2NzRiZjZkODc1ZjIyY2UzIn19fQ=="}]}}}'),
    (-4,0): ("masp005", 3, True, "minecraft:potion", "Lab Rush", "Dash through the abandoned laboratory and make your way out the twisted corridors.\n\n§6MaSp005", '{Potion:"minecraft:luck"}'),
    (-4,1): ("lazybrush", 0, False, "minecraft:barrier", "No", "Why even play this?\n\n§6Lazybrush2"),
    (-4,2): ("flying_dragon", 1, False, "minecraft:decorated_pot", "History Unearthed", "Learn about the factory history and discover the magic of nature!\n\n§6FlyingDragon"),
    (-4,3): ("fabulousfox", 0, True, "minecraft:reinforced_deepslate", "Cavern Shift", "A treacherous cave parkour map! Jump from moving platforms to floating obstacles and navigate through the dark depths.\n\n§6FabulousFox"),
    (-3,-5): ("ischool04_plot", 0, True),
    (-3,-4): ("snowvillage", 0, True, "minecraft:snow_block", "Snow Village", "Travel across towns on the mountains!\n\n§6Teddyishappyl"),
    (-3,-2): ("reuge", 0, False, "minecraft:beacon", "Skyborne\nMetropolis", "Navigate the captivating skies of a floating city!\n\n§6REUGE"),
    (-3,-1): ("cds28", 0, True, "minecraft:heart_of_the_sea", "Pinball", "Parkour across the pinball machine. Will you set a new score record?\n\n§6CDs28"),
    (-3,0): ("anikey_plot", 4, True, "minecraft:white_glazed_terracotta", "Mirror Travel", "Jumping in a Gothic building, try to go though it!\n\n§6Anikey_Chang"),
    (-3,1): ("aljaz", 0, True, "minecraft:player_head", "Snake Madness", "Scale the snakes and escape the maze!\n\n§6Aljaz14", '{SkullOwner:{Id:[I;2098679158,-283884171,-1425129158,-1065654650],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjA1MDNiODFhYzAyMGM2N2MzNzc4N2I0NWM5YTI2MjIzZjliYzI2YmNhMjdmODFhZjMyZjJjZjU1ZTI0NDBiNyJ9fX0="}]}}}'),
    (-3,2): ("boss586", 3, False, "minecraft:amethyst_block", "Mystical House", "Parkour your way through a mysterious mystical cave under a house.\n\n§6Boss586 & mmmmmaaaaaxxxxx"),
    (-3,4): ("zombie1111", 0, True, "minecraft:bricks", "Monster City", "Parkour through the city and fight the monsters!\n\n§6Zombie1111 & _Elton"),
    (-3,5): ("simondmc", 2, True, "minecraft:big_dripleaf", "Drip Jump", "Leaf us a review!\n\n§6SimonDMC & EurekaX"),
    (-2,-6): ("eosand", 0, True, "minecraft:end_crystal", "Pipeline\nPandemonium", "Make it through four pipes of increasing complexity by facing in the direction of the correct pipe.\n\n§6EOSand"),
    (-2,-5): ("ronanemperor", 2, True, "minecraft:sculk_shrieker", "Warden's Domain", "Parkour through the dangerous underground to reach the Warden's Domain.\n\n§6RonanEmperor"),
    (-2,-4): ("billyandaspookabie", 2, True),
    (-2,-3): ("technodono_plot_-2_-3", 0, True, "minecraft:note_block", "Beat Bounce", "When your grooving to music what do you do? You bounce of course!\nIn this parkour map your jumping is out of your control, bounce to the beat and try escape the abandoned laboratory as fast as possible!\n\n§6Technodono & BrandShei"),
    (-2,-1): ("time_stream", 0, False, "minecraft:clock", "Time Stream", "You've arrived at Time Labs Universe \"Time Stream\". Safe travels and don't get stuck in the time stream!\n\n§6P2ime"),
    (-2,1): ("theswagunicorn3", 0, False, "minecraft:feather", "Flappy Fowl", "2014 was a great year!\n\n§6_TheSwagUnicorn_"),
    (-2,3): ("stabily_time_tower_parkour", 1, False, "minecraft:ladder", "Time Tower", "Climbing to the future!\n\n§6Stabily Waqular"),
    (-2,4): ("platform", 2, False, "minecraft:green_stained_glass", "Magical Platforms", "Experience the ability to conjure glass platforms, they may last for a little longer than usual.\n\n§6P2ime & Dominexis"),
    (-2,5): ("captainargus", 3, False, "minecraft:clock", "Factory Frenzy", "Don't fall off, you're sure to get lost. Follow the carpets if you're ever uncertain.\n\n§6CaptainArgus"),
    (-2,6): ("theswagunicorn_horse", 0, True, "minecraft:saddle", "Half Heart\nHorse Hustle", "Rush to the castle with your fragile steed!\n\n§6_TheSwagUnicorn_"),
    (-1,-5): ("spinat", 0, False, "minecraft:purple_concrete_powder", "25 Pixels", "Choose your path across 25 pixels of parkour!\n\n§6Die_Spinatbox"),
    (-1,-4): ("kirnt", 1, False, "minecraft:oxidized_copper", "Stellar Adventure", "Leap through outer space from world to world!\n\n§6kirnt2027 & Minigame Makers"),
    (-1,-3): ("itspungpond98", 0, True, "minecraft:verdant_froglight", "The Froglight Town", "Find the froglights by following the trails, and exit through the gates.\n\n§6ItsPungpond98"),
    (-1,-2): ("maze_escape", 2, True, "minecraft:zombie_head", "Maze Escape", "Explore through the maze and search for the exit.\n\n§6Anas099"),
    (-1,-1): ("lory", 1, True),
    (-1,0): ("lobby", -4, False, "minecraft:air", "Lobby", "Project Run 2 Lobby.\n\n§6SnakeRattler"),
    (-1,1): ("pytich_dropper", 0, False, "minecraft:pointed_dripstone", "Dropper Depths", "Keep on falling, keep on falling...\n\n§6Pytich & _TheSwagUnicorn_"),
    (-1,2): ("applecake", 2, True, "minecraft:waxed_cut_copper", "Steampunk Factory", "Compliant with safety regulations.\n\n§6Applecake"),
    (-1,3): ("woutbelt", 0, True, "minecraft:polished_blackstone", "Portal of Ages", "Navigate the currents of time to discover your path to the exit.\n\n§6WoutBelt"),
    (-1,4): ("brosephmc_mc_pr", 0, True, "minecraft:minecart", "Car Tunnel", "Jump across moving cars in a highway tunnel. Based off the Motor Course parkour maps.\n\n§6BrosephMC"),
    (-1,5): ("funkytoc_moon", 1, False, "minecraft:dead_bubble_coral_block", "Rock and Dust", "A breathtaking experience!\n\n§6FunkyToc & _TheSwagUnicorn_"),
    (0,-4): ("sparkour", 0, False, "minecraft:compass", "Straight", "As straightforward as it gets.\n\n§6Sparkour"),
    (0,-3): ("evilgodloki", 1, True, "minecraft:dark_oak_door", "Password Anxiety", "Stop inputting the same code!\nThat's cheating!\nTry to find another one!\n\n§6EvilGod_Loki"),
    (0,-1): ("snakerattler", 0, False, "minecraft:player_head", "A Time of War", "As you parkour around the remnants of a kingdom, time warp from time zones to get to the exits.\n\n§6SnakeRattler & _TheSwagUnicorn_", '{SkullOwner:{Id:[I;2147172735,-1468380994,-1893618298,-1175039205],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDlmN2NlYzAwYWZlOWY3YzYyNGFlOGRmNWMwMzNjYjQxOWY2ZWE0MTAxNzAyMWI5YmVmZDkxOTcwYjgzM2E1YyJ9fX0="}]}}}'),
    (0,0): ("cubed", 0, False, "minecraft:gold_block", "Cubed Prologue", "Begin your run with parkour by Cubed!\n\n§6Cubed Team"),
    (0,1): ("eelaa", 0, False, "minecraft:trident", "Torrential Tridents", "Navigate through the torrential lands with your trusty trident.\n\n§6EELAA & Lazybrush2", '{Enchantments:[{}]}'),
    (0,3): ("rambini", 0, False, "minecraft:rooted_dirt", "Crack in The World", "Parkour through this abandoned place located inside a natural sinkhole: going right through a crack in the earth caused by the people who once lived there.\n\n§6Rambini"),
    (0,4): ("lucumaprpack", 0, True, "minecraft:writable_book", "Eyebrary", "A vast library containing all of mapmaking history and... flying books?!\n\n§6Lucuma & BBoy2003"),
    (1,-5): ("rko", 1, True, "minecraft:brick", "RKO Factory", "Parkour your way through a vast and old factory on moving machinery and conquer the challenge awaiting you.\n\n§6Rajdi & Kassar & Owca", "{CustomModelData:721011}"),
    (1,-4): ("klue007", -1, False, "minecraft:spruce_wood", "Spruce Town", "Complete parkour in a town surrounded by snowy mountains.\n\n§6klue"),
    (1,-3): ("supersette", 4, False, "minecraft:golden_boots", "Biome Run", "Run those biomes!\n\n§6Supersette"),
    (1,-2): ("sliceolife", 0, True, "minecraft:gray_concrete", "Slice o' Life", "Navigate a bustling city!\n\n§6MegaMinerDL & mmmmmaaaaaxxxxx"),
    (1,-1): ("theswagunicorn2", 0, True, "minecraft:gilded_blackstone", "Bastion Build-Up", "Traverse your way through the Piglins' impressive construction of a massive beacon using the gold they processed in this factory.\n\n§6_TheSwagUnicorn_"),
    (1,1): ("risely", 1, False, "minecraft:name_tag", "Your Ticket Please!", "Exit through the basement or parkour your way out of the abandoned train station.\n\n§6Risely"),
    (1,2): ("minerman", 0, False, "minecraft:painting", "Portrait Planting", "Look around and find the secrets of the museum.\n\n§6mrminerman21 & aspookabie"),
    (1,3): ("theswagunicorn", 0, True, "minecraft:creeper_spawn_egg", "Kreeper Kerfuffle", "A steampunk esque house in the country that leads into creeper production lines and redstone mines.\n\n§6_TheSwagUnicorn_"),
    (1,4): ("rex_saltus_neon", 4, False, "minecraft:light_blue_concrete", "NEON", "Cubes light up the night.\n\n§6Rex_Saltus & xherax"),
    (1,5): ("inquognito", 3, True, "minecraft:sculk_sensor", "Sector Tau", "Discover the source of the distress beacon.\n\n§6InQuognito & NessIsPSIRockin"),
    (2,-5): ("decimate", 0, False, "minecraft:chest", "The Skyblock\nExperience", "Say hi to Jerry on the way!\n\n§6DecimateJSY97a & _TheSwagUnicorn_ & Masp005 & JPMagic"),
    (2,-4): ("spooky", 2, False, "minecraft:sculk", "CyberFall", "Make your way around the city using your trident. Try Not To Fall!\n\n§6SpookyDaSpirit & Lazybrush2"),
    (2,-3): ("intjungle", 1, False, "minecraft:jungle_leaves", "Dripleaf Jungle", "Parkour deep into the heart of the jungle. Will you make it out alive?\n\n§6Interstellar_1"),
    (2,-1): ("bansed", -1, True, "minecraft:knowledge_book", "2D Parkour", "Minecraft is 2D now??\n\n§6Bansed & Henkie"),
    (2,1): ("subchronos", 3, True, "minecraft:honeycomb_block", "The Beehive", "Enter the beehive and avoid falling to the honey pits.\n\n§6SubChronos"),
    (2,3): ("eli_marie", 1, False, "minecraft:red_mushroom", "Mushylands", "Fun in the tunnels!\n\n§6Eli_marie"),
    (2,4): ("cobra2", 1, True, "minecraft:iron_boots", "Dualism Chamber", "Travel through the dimension that knows neither up nor down.\n\n§6Maniacobra"),
    (2,6): ("lifeely", 0, True, "minecraft:blast_furnace", "Blast Burner", "Phew! Sure is hot in here!\n\n§6Lifeely & Dominexis"),
    (3,-5): ("shadoweeq", 0, False, "minecraft:player_head", "Skyreach\nMega Tower", "Explore changing city scenes as you make your way up to reach the top of the tower.\n\n§6shadoweeq", '{SkullOwner:{Id:[I;1543298721,250171001,-2086573174,-871347001],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWY2YmIzYWQ4ZGFmMGMxNDk5YjVlNDZkY2Y0MTc2YzgzNDU0MzU1M2ExYTgxODAwOWU3Njc1ZTg5NjI5NWUxYSJ9fX0="}]}}}'),
    (3,-4): ("kevinc", 0, False, "minecraft:gold_ore", "Mine Skyisland", "There were many people who came for the treasure, and now it's empty.\n\n§6mc_Kevin_Creeper"),
    (3,-2): ("mooney", 0, False, "minecraft:light_blue_terracotta", "Gallery of Babble", "Find your way amongst babbling signs a plenty!\n\n§6DeuxiemeCarlin"),
    (3,-1): ("dominexis", 4, False, "minecraft:slime_block", "Slime Cave", "Careful! That stuff will kill ya!\n\n§6Dominexis"),
    (3,0): ("duality", 4, False, "minecraft:cherry_sapling", "Duality", "Choose your path of either light or dark and take on a scenic parkour adventure!\n\n§6ShadowCreeperr"),
    (3,1): ("blackcb", 1, False, "minecraft:spruce_log", "Mountain View", "Keep your momentum on the ice!\n\n§6BlackCB & Dominexis"),
    (3,2): ("im1294", 1, True, "minecraft:white_wool", "Mob Hop Scotch", "Only one swap per mob. But now that you killed it: did that help you?\n\n§6IceMaster1294"),
    (3,4): ("proxxchf", 0, True, "minecraft:amethyst_cluster", "Crystalline\nCaverns", "Scale the scaffolds!\n\n§6PROxxCHF & Warshito"),
    (3,5): ("cantaloupe", 0, True, "minecraft:sandstone", "Labyrinth of\nLost Souls", "When the path is unclear, know that there will always be a guiding light from past souls.\n\n§6Cantaloupe4 & Technodono"),
    (4,-3): ("uk", 0, True, "minecraft:piston", "Puzzle Escape", "Parkour and solve puzzles to escape!\n\n§6That_UK"),
    (4,-2): ("ykw", 3, True, "minecraft:sculk_sensor", "Warden Vision", "Let sound guide you out of the darkness.\n\n§6YouKnowWhen"),
    (4,-1): ("rooftop_adventure_ra", 1, False, "minecraft:cobweb", "Rooftop Adventure", "Parkour across an abandoned city.\n\n§6ed1ska"),
    (4,0): ("cygnus_switch_palace", 0, True, "minecraft:purple_concrete", "Switch Palace", "The platforms switch on and off, keep your rhythm and avoid the dotted line blocks.\n\n§6Cygnus"),
    (4,1): ("piemel", 2, True),
    (4,2): ("hhyes", 0, False, "minecraft:slime_block", "Escape From Within", "Escape the reverse dropper!\n\n§6Hhyes & KaiWsMC & Dominexis"),
    (4,3): ("big_kitchen", 1, True),
    (5,-3): ("tuntan", 4, True, "minecraft:elytra", "Tunnel Tangle", "Fly through tight tunnels to escape the maze!\n\n§6mmmmmaaaaaxxxxx"),
    (5,-2): ("polds", 0, True, "minecraft:grass_block", "Moving Madness", "Just jump. lol\n\n§6PoldsSlippers"),
    (5,-1): ("frostcobra", 0, True, "minecraft:calcite", "Cloud Maze", "Find your way through portals connected to strange places in the middle of the sky, and ascend above the clouds.\n\n§6Maniacobra & Frost_Chaos"),
    (5,1): ("marcostrk-icy-boat-parkour", 1, True, "minecraft:oak_boat", "Icy Boat Parkour", "Stay snug in your boat and glide gracefully across the slippery ice.\n\n§6MarcoStrk & TimoStr"),
    (5,2): ("flcme", 0, False, "minecraft:slime_block", "Tomfoolery", "Bounce around and make your way to the finish!\n\n§6flcme & MaSp005"),
    (5,3): ("wall_hall", 0, True, "minecraft:smooth_stone_slab", "Up Against\nThe Walls", "Make your way through the hall of moving walls!\n\n§6Loominardy"),
    (6,-2): ("ganymede", 0, True, "minecraft:white_stained_glass_pane", "Colorblind", "Navigate through several enigmatic rooms using special colored lenses to reveal hidden paths.\n\n§6Ganymede & mmmmmaaaaaxxxxx"),
    (6,2): ("titruc.interactivejump.sys", 0, True, "minecraft:flowering_azalea", "Dynamique Wild", "This cave full of nature! Look into the eyes to carve your path!\n\n§6Titruc")
}



# Open file

with (PROGRAM_PATH / "Plots.txt").open("r", encoding="utf-8") as file:
    plots = file.read().split("\n")



# Compile list of plot coords

coordinates: list[tuple[int, int]] = []
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
        forceload_bool = NAMESPACES[coordinate][2]
        comment = ""
    else:
        namespace = "namespace"
        forceload_bool = False
        comment = "#"

    forceload_coord_x_1 = coordinate[0]*96 + 16
    forceload_coord_x_2 = coordinate[0]*96 + 48
    forceload_coord_z_1 = coordinate[1]*96 + 16
    forceload_coord_z_2 = coordinate[1]*96 + 48

    commands.append(
        f'execute store result score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value positioned {coordinate[0]*96 - 8}.0 -64 {coordinate[1]*96 - 8}.0 if entity @a[dx=95,dy=383,dz=95,tag=!pr.spectator,limit=1]\n' +

        (
        f'{comment}scoreboard players set #check_loaded_bool pr.value 1\n' +
        f'{comment}execute if score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value matches 0 if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 0 run scoreboard players set #check_loaded_bool pr.value 0\n' +
        f'{comment}scoreboard players set #chunk_loaded_bool pr.value 0\n' +
        f'{comment}execute if score #check_loaded_bool pr.value matches 1 if loaded {forceload_coord_x_1} 0 {forceload_coord_z_1} if loaded {forceload_coord_x_2} 0 {forceload_coord_z_1} if loaded {forceload_coord_x_1} 0 {forceload_coord_z_2} if loaded {forceload_coord_x_2} 0 {forceload_coord_z_2} run scoreboard players set #chunk_loaded_bool pr.value 1\n' +
        f'{comment}execute if score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value matches 1 if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 0 run forceload add {forceload_coord_x_1} {forceload_coord_z_1}\n' +
        f'{comment}execute if score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value matches 1 if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 0 run forceload add {forceload_coord_x_2} {forceload_coord_z_1}\n' +
        f'{comment}execute if score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value matches 1 if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 0 run forceload add {forceload_coord_x_1} {forceload_coord_z_2}\n' +
        f'{comment}execute if score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value matches 1 if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 0 run forceload add {forceload_coord_x_2} {forceload_coord_z_2}\n' +
        f'{comment}execute if score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value matches 0 if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 1 run forceload remove {forceload_coord_x_1} {forceload_coord_z_1}\n' +
        f'{comment}execute if score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value matches 0 if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 1 run forceload remove {forceload_coord_x_2} {forceload_coord_z_1}\n' +
        f'{comment}execute if score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value matches 0 if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 1 run forceload remove {forceload_coord_x_1} {forceload_coord_z_2}\n' +
        f'{comment}execute if score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value matches 0 if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 1 run forceload remove {forceload_coord_x_2} {forceload_coord_z_2}\n'
        if forceload_bool else '') +

        f'{comment}execute {"if score #chunk_loaded_bool pr.value matches 1 " if forceload_bool else ""}unless score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value = #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value positioned {coordinate[0]*96 - 8}.0 -64 {coordinate[1]*96 - 8}.0 run tag @a[dx=95,dy=383,dz=95,tag=!pr.spectator] add pr.target\n' +
        f'{comment}execute {"if score #chunk_loaded_bool pr.value matches 1 " if forceload_bool else ""}unless score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value = #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value positioned {coordinate[0]*96 - 8}.0 -64 {coordinate[1]*96 - 8}.0 run tag @e[dx=95,dy=383,dz=95,tag=!pr.spectator,tag=!pr.ignore] add pr.target\n' +
        f'{comment}execute {"if score #chunk_loaded_bool pr.value matches 1 " if forceload_bool else ""}if score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value matches 1 if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 0 positioned {coordinate[0]*96 + 40} 0 {coordinate[1]*96 + 40} run function {namespace}:plot_on\n' +
        f'{comment}execute {"if score #chunk_loaded_bool pr.value matches 1 " if forceload_bool else ""}if score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value matches 0 if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 1 positioned {coordinate[0]*96 + 40} 0 {coordinate[1]*96 + 40} run function {namespace}:plot_off\n' +
        f'{comment}execute {"if score #chunk_loaded_bool pr.value matches 1 " if forceload_bool else ""}unless score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value = #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value run tag @a[tag=pr.target] remove pr.target\n' +
        f'{comment}execute {"if score #chunk_loaded_bool pr.value matches 1 " if forceload_bool else ""}unless score #plot_player_{coordinate[0]}_{coordinate[1]} pr.value = #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value run tag @e[tag=pr.target] remove pr.target\n' +
        f'{"execute if score #chunk_loaded_bool pr.value matches 1 run " if forceload_bool else ""}scoreboard players operation #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value = #plot_player_{coordinate[0]}_{coordinate[1]} pr.value\n' +
        f'execute {"if score #chunk_loaded_bool pr.value matches 1 " if forceload_bool else ""}if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 1 positioned {coordinate[0]*96 - 4}.0 -64 {coordinate[1]*96 - 4}.0 run scoreboard players set @a[dx=87,dy=383,dz=87,tag=!pr.spectator] pr.plot {(coordinate[0] + 16) + (coordinate[1] + 16)*64}\n' +
        f'execute {"if score #chunk_loaded_bool pr.value matches 1 " if forceload_bool else ""}if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 1 positioned {coordinate[0]*96 - 4}.0 -64 {coordinate[1]*96 - 4}.0 run tag @a[dx=87,dy=383,dz=87,tag=!pr.spectator] add pr.target\n' +
        f'execute {"if score #chunk_loaded_bool pr.value matches 1 " if forceload_bool else ""}if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 1 positioned {coordinate[0]*96 - 4}.0 -64 {coordinate[1]*96 - 4}.0 run tag @e[dx=87,dy=383,dz=87,tag=!pr.spectator,tag=!pr.ignore] add pr.target\n' +
        f'execute {"if score #chunk_loaded_bool pr.value matches 1 " if forceload_bool else ""}if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 1 as @a[tag=pr.target] unless score @s pr.plot = @s pr.plot_previous at @s run function pr:player/plot/move\n' +
        f'{comment}execute {"if score #chunk_loaded_bool pr.value matches 1 " if forceload_bool else ""}if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 1 positioned {coordinate[0]*96 + 40} 0 {coordinate[1]*96 + 40} run function {namespace}:tick_plot\n' +
        f'execute {"if score #chunk_loaded_bool pr.value matches 1 " if forceload_bool else ""}if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 1 run tag @a[tag=pr.target] remove pr.target\n' +
        f'execute {"if score #chunk_loaded_bool pr.value matches 1 " if forceload_bool else ""}if score #plot_tick_{coordinate[0]}_{coordinate[1]} pr.value matches 1 run tag @e[tag=pr.target] remove pr.target'
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
        "\n\n\n".join(commands) +
        "\n\n\n\ntag @s add pr.target"
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
        "tag @s remove pr.target\n" +
        "clear @s\n" +
        "effect clear @s\n" +
        "execute unless score @s pr.title_cooldown matches 1.. run title @s times 10 70 30\n" +
        'execute unless score @s pr.title_cooldown matches 1.. run title @s title {"text":""}\n' +
        'execute unless score @s pr.title_cooldown matches 1.. run title @s subtitle {"text":""}\n' +
        "scoreboard players set @s pr.title_cooldown 0\n" +
        "experience set @s 0 levels\n" +
        "experience set @s 0 points\n" +
        "attribute @s minecraft:generic.max_health base set 20.0" + "\n"*8 +
        "# Send message when they start their run\n\n" +
        f'execute unless score @s spectate matches 1.. if score @s pr.plot_x matches -1 if score @s pr.plot_z matches 0 unless score @s pr.plot = #spawn_plot pr.value run tellraw @s {{"text":"Your run has begun","color":"gold"}}\n' +
        f'execute unless score @s spectate matches 1.. if score @s pr.plot_x matches -1 if score @s pr.plot_z matches 0 unless score @s pr.plot = #spawn_plot pr.value run tellraw @s [{{"text":"Use ","color":"gray"}},{{"text":"/trigger lobby","color":"white"}},{{"text":" to return to the lobby","color":"gray"}}]\n' +
        f'execute unless score @s spectate matches 1.. if score @s pr.plot_x matches -1 if score @s pr.plot_z matches 0 unless score @s pr.plot = #spawn_plot pr.value run tellraw @s [{{"text":"Use ","color":"gray"}},{{"text":"/trigger checkpoint","color":"white"}},{{"text":" to go to the previous checkpoint","color":"gray"}}]' + "\n"*8 +
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
        f'execute if score @s pr.plot_x matches {coordinate[0]} if score @s pr.plot_z matches {coordinate[1]} unless score @s spectate matches 1.. unless score @s pr.plot = #spawn_plot pr.value run advancement grant @s only pr:plot_{str(coordinate[0]).replace("-", "n")}_{str(coordinate[1]).replace("-", "n")}'
    )

with (DATA_PACK_PATH / "data" / "pr" / "functions" / "plot" / "advancement.mcfunction").open("w", encoding="utf-8") as file:
    file.write(
        "# Grant advancements\n\n" +
        "\n".join(commands)
    )



# Generate leaderboard name function

commands: list[str] = []
for coordinate in coordinates:
    if coordinate in NAMESPACES and len(NAMESPACES[coordinate]) > 3:
        name = NAMESPACES[coordinate][4].replace("\n", " ")
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
        f'execute positioned {coordinate[0]*4 + 40 - 96} -45 {coordinate[1]*4 + 40} run function pr:leaderboard/spawn/main'
    )
commands.append("\n\n")
for coordinate in coordinates:
    if coordinate not in NAMESPACES:
        continue
    plot = NAMESPACES[coordinate]
    if len(plot) < 6:
        continue
    name = plot[4].replace("'", "\\'")
    newline_char = "\\\\n"
    line_count = len(plot[5].split("§6")[-1].split(" & ")) + len(name.split("\n")) + 1
    name = newline_char.join(name.split("\n"))
    commands.append(
        f'summon text_display {coordinate[0]*4 - 55.5 + line_count*0.125} -46.99 {coordinate[1]*4 + 40.5} {{text:\'[{{"text":"{name}","color":"black","bold":true}},{{"text":"\\\\n\\\\n{newline_char.join(plot[5].split("§6")[-1].split(" & "))}","color":"black","bold":false}}]\',Tags:["pr.leaderboard"],background:0,transformation:{{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.5f,0.5f,0.5f,0.5f],translation:[0.0f,0.0f,0.0f]}}}}'
    )

with (DATA_PACK_PATH / "data" / "pr" / "functions" / "leaderboard" / "reset.mcfunction").open("w", encoding="utf-8") as file:
    file.write(
        "# Reset leaderboard\n\n" +
        "kill @e[type=armor_stand ,tag=pr.leaderboard]\n\n" +
        "kill @e[type=text_display,tag=pr.leaderboard]\n\n" +
        "kill @e[type=marker      ,tag=pr.leaderboard]\n\n" +
        "scoreboard players operation #plot pr.value = #spawn_plot pr.value\n" +
        f"execute positioned {35 - 96} -45 40 run function pr:leaderboard/spawn/main\n\n" +
        "\n".join(commands)
    )



# Generate advancements

for coordinate in coordinates:
    if coordinate in NAMESPACES and len(NAMESPACES[coordinate]) > 3:
        item = NAMESPACES[coordinate][3]
        name = NAMESPACES[coordinate][4].replace("\n", " ")
        description = NAMESPACES[coordinate][5]
        if len(NAMESPACES[coordinate]) >= 7:
            nbt = NAMESPACES[coordinate][6]
        else:
            nbt = "{}"
    else:
        item = "minecraft:diamond"
        name = f"Section {coordinate[0]}, {coordinate[1]}"
        description = "Complete this section."
        nbt = "{}"

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
                        "item": item,
                        "nbt": nbt
                    },
                    "title": [
                        [{"text": name, "color": "white"},{"text": " "*(12-len(name))}]
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
            indent=4,
            ensure_ascii=False
        )



# Generate particle function

commands = []
for coordinate in coordinates:
    if coordinate == (-1,0):
        continue
    location = f'{coordinate[0]}_{coordinate[1]}'.replace("-", "n")
    commands.append(
        f'execute if entity @s[advancements={{pr:plot_{location}=true}}] run particle dust 1 0.66666 0 1 {coordinate[0]*4 - 55.5 - 1.5} -47 {coordinate[1]*4 + 40.5 - 1.5} 0 0 0 0 1 normal @s\n'
        f'execute if entity @s[advancements={{pr:plot_{location}=true}}] run particle dust 1 0.66666 0 1 {coordinate[0]*4 - 55.5 - 1.5} -47 {coordinate[1]*4 + 40.5 + 1.5} 0 0 0 0 1 normal @s\n'
        f'execute if entity @s[advancements={{pr:plot_{location}=true}}] run particle dust 1 0.66666 0 1 {coordinate[0]*4 - 55.5 + 1.5} -47 {coordinate[1]*4 + 40.5 - 1.5} 0 0 0 0 1 normal @s\n'
        f'execute if entity @s[advancements={{pr:plot_{location}=true}}] run particle dust 1 0.66666 0 1 {coordinate[0]*4 - 55.5 + 1.5} -47 {coordinate[1]*4 + 40.5 + 1.5} 0 0 0 0 1 normal @s'
    )
with (DATA_PACK_PATH / "data" / "pr" / "functions" / "leaderboard" / "particles.mcfunction").open("w", encoding="utf-8") as file:
    file.write(
        "\n".join(commands)
    )



print("Functions generated")
input()