execute store result storage eden:temp village_name.id int 1 run random value 1..200

execute if biome ~ ~ ~ #mob_manager:ocean run return run function mob_manager:village/name/get_data/ocean with storage eden:temp village_name
execute if biome ~ ~ ~ #mob_manager:forest run return run function mob_manager:village/name/get_data/forest with storage eden:temp village_name
execute if biome ~ ~ ~ #mob_manager:desert run return run function mob_manager:village/name/get_data/desert with storage eden:temp village_name
execute if biome ~ ~ ~ #mob_manager:snow run return run function mob_manager:village/name/get_data/snow with storage eden:temp village_name
execute if biome ~ ~ ~ #mob_manager:mountains run return run function mob_manager:village/name/get_data/mountains with storage eden:temp village_name
execute if biome ~ ~ ~ #mob_manager:taiga run return run function mob_manager:village/name/get_data/taiga with storage eden:temp village_name
execute if biome ~ ~ ~ #mob_manager:savanna run return run function mob_manager:village/name/get_data/savanna with storage eden:temp village_name
execute if biome ~ ~ ~ #mob_manager:swamp run return run function mob_manager:village/name/get_data/swamp with storage eden:temp village_name
execute if biome ~ ~ ~ #mob_manager:jungle run return run function mob_manager:village/name/get_data/jungle with storage eden:temp village_name
execute if biome ~ ~ ~ #mob_manager:river run return run function mob_manager:village/name/get_data/river with storage eden:temp village_name
execute if biome ~ ~ ~ #mob_manager:caves run return run function mob_manager:village/name/get_data/caves with storage eden:temp village_name
execute if biome ~ ~ ~ #mob_manager:cherry_grove run return run function mob_manager:village/name/get_data/cherry_grove with storage eden:temp village_name
execute if biome ~ ~ ~ #mob_manager:mushroom_fields run return run function mob_manager:village/name/get_data/mushroom_fields with storage eden:temp village_name
execute if biome ~ ~ ~ #mob_manager:nether run return run function mob_manager:village/name/get_data/nether with storage eden:temp village_name
execute if biome ~ ~ ~ #mob_manager:end run return run function mob_manager:village/name/get_data/end with storage eden:temp village_name
execute if biome ~ ~ ~ #mob_manager:deep_blue run return run function mob_manager:village/name/get_data/deep_blue with storage eden:temp village_name

function mob_manager:village/name/get_data/plains with storage eden:temp village_name
