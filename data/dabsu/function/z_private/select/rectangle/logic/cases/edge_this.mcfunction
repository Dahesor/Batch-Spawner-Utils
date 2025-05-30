execute store result score $tx calc.dabsu run data get storage dabsu:run Chunks[0].Objects[0].Pos.x
execute store result score $ty calc.dabsu run data get storage dabsu:run Chunks[0].Objects[0].Pos.y
execute store result score $tz calc.dabsu run data get storage dabsu:run Chunks[0].Objects[0].Pos.z

execute unless function dabsu:z_private/select/rectangle/logic/point/x run return fail
execute unless function dabsu:z_private/select/rectangle/logic/point/y run return fail
execute unless function dabsu:z_private/select/rectangle/logic/point/z run return fail

scoreboard players add %select_count calc.dabsu 1
data modify storage dabsu:run Selected[0].Chunks[0].Objects append from storage dabsu:run Chunks[0].Objects[0]

execute store result score $ThisType selected.dabsu run data get storage dabsu:run Chunks[0].Objects[0].type
function dabsu:z_private/select/if_same_type
