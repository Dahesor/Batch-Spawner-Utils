execute if score @s highlight.dabsu matches 1 run return run data modify entity @s block_state.Name set value "cyan_stained_glass_pane"
execute if score @s highlight.dabsu matches 2 run return run data modify entity @s block_state.Name set value "blue_stained_glass_pane"
execute if score @s highlight.dabsu matches 3 run return run data modify entity @s block_state.Name set value "lime_stained_glass_pane"
execute if score @s highlight.dabsu matches 4 run return run data modify entity @s block_state.Name set value "yellow_stained_glass_pane"
execute if score @s highlight.dabsu matches 5..6 run return run data modify entity @s block_state.Name set value "orange_stained_glass_pane"
execute if score @s highlight.dabsu matches 7.. run return run data modify entity @s block_state.Name set value "red_stained_glass_pane"