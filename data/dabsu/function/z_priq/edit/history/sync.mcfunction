data modify storage dabsu:run form set value {}
data modify storage dabsu:run form.form.tag set from block ~ ~ ~ SpawnPotentials
data modify storage dabsu:run run_custom set value {}
data modify storage dabsu:run run_custom.run set value "function dabsu:z_private/modify/multipot/rewrite_nbt"
data modify storage dabsu:run run_custom.args set from storage dabsu:run form

function dabsu:z_priq/selected/update/any_context
data modify storage dabsu:run type.list set value []
data modify storage dabsu:run type.list append from storage dabsu:user data[0].editing.history[0]
function dabsu:z_priq/edit/que_api
data modify storage dabsu:user data[0].editing.history[0] set from storage dabsu:user data[0].target.type