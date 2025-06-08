advancement revoke @s only mob_manager:talking_villager/jungle

execute store result storage eden:temp dialogue.id int 1 run random value 100..299
data modify storage eden:temp dialogue.type set value "jungle"

function mob_manager:villager/talking/get_db_entry with storage eden:temp dialogue
function mob_manager:villager/talking/send_msg with storage eden:temp dialogue
