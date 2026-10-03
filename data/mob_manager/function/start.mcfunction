##stagger the repeating loops so they do not all run on the same tick
schedule function mob_manager:init 1t
schedule function mob_manager:spectator_waypoint_receive 6t
schedule function mob_manager:village/init 7t
schedule function mob_manager:rarity_mobs/particles/init 9t
schedule function mob_manager:jeb_sheep/change_color/run 10t
schedule function mob_manager:locator_bar/init 12t
schedule function mob_manager:rarity_mobs/init 12t
schedule function mob_manager:database/playerheads/update/init 13t
schedule function mob_manager:baby_mount/scheduled 15t
schedule function mob_manager:check_gamerules 15t
schedule function mob_manager:misc_modifications 18t
