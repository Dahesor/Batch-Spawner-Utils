scoreboard players reset #ctrl_start calc.dabsu
execute if score @s ctrl_wait.dabsu matches 4.. run scoreboard players set #ctrl_start calc.dabsu 1

scoreboard players set #hover calc.dabsu 0

execute store result score #case calc.dabsu as @n[type=#dabsu:quick_display,distance=..0.45,tag=dabsu.gui_edit,tag=dabsu.ctrl] run function dabsu:z_priq/gui/player/validate_range
execute unless score #case calc.dabsu matches 1.. run return run function dabsu:z_priq/gui/player/failed

execute if score @s ctrl_wait.dabsu matches 4.. unless score @s ctrl.dabsu matches 1.. run return run function dabsu:z_priq/gui/player/begin_ctrl

execute if score #hover calc.dabsu matches 1 unless score disableActionbar Option.dabsu matches -1 run title @s actionbar ["← ",{text:"Spawn Range",color:"green"}," (Hold Right Button)"," →"]

execute if score #hover calc.dabsu matches 2 unless score disableActionbar Option.dabsu matches -1 run title @s actionbar ["← ",{text:"Active Range",color:"aqua"}," (Hold Right Button)"," →"]

execute if score #hover calc.dabsu matches 3 unless score disableActionbar Option.dabsu matches -1 run title @s actionbar ["↑ ",{text:"Spawn Count",color:"yellow"}," (Hold Right Button)"," ↓"]


return 1