# Import things

from pathlib import Path
import shutil
import sys
import os



# Check that correct Python version is running

if not (
    (sys.version_info[0] == 3 and sys.version_info[1] >= 9)
    or
    (sys.version_info[0] > 3)
):
    print("\n\nERROR: Data Pack Zipper requires Python 3.9 or newer!")
    input()
    exit()



# Initialize variables

PROGRAM_PATH = Path(__file__).parent



def program():

    # Return if the folder doesn't exist
    if not (PROGRAM_PATH / "Data Packs").exists():
        print("ERROR: The folder 'Data Packs' doesn't exist!")
        return
    
    # Wipe output directory
    shutil.rmtree(PROGRAM_PATH / "Zipped Data Packs")
    (PROGRAM_PATH / "Zipped Data Packs").mkdir(exist_ok=True, parents=True)
    
    # Iterate through packs
    for data_pack_path in (PROGRAM_PATH / "Data Packs").iterdir():
        if not data_pack_path.is_dir():
            continue


        data_pack = data_pack_path.name
        if data_pack in [
            "Anas (-1,-2)",
            "KelloVerra (2,5)"
        ]:
            print(f'Skipping {data_pack}')
            continue
        print(f'Zipping {data_pack}')
        shutil.make_archive(data_pack_path.parent.parent / "Zipped Data Packs" / data_pack, "zip", data_pack_path)

    print("Data packs zipped")



program()
input()