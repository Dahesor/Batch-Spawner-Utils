execute if block ^ ^ ^ trial_spawner if predicate dabsu:sneaking align xyz positioned ~0.5 ~0.5 ~0.5 run return run function dabsu:z_priq/gui/trial/check_locked
execute if block ^ ^ ^ spawner run return run function dabsu:z_private/mod/raycast/specialize
execute unless entity @s[distance=..25] if score $ray calc.dabsu matches 2 if predicate dabsu:sneaking run return run function dabsu:z_private_d/batch/home
execute unless entity @s[distance=..25] run return fail
#particle dust{color:[1,1,1],scale:0.05} ~ ~ ~ 0 0 0 0 0 force
execute positioned ^ ^ ^0.04 run return run function dabsu:z_private/mod/raycast/percise