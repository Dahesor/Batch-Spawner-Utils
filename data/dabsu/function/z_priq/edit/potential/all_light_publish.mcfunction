dialog clear @s

$data modify storage dabsu:run form set value $(form)

data modify storage dabsu:run form.form set from storage dabsu:run form

data modify storage dabsu:run run_custom set value {}
data modify storage dabsu:run run_custom.run set value "function dabsu:z_private/modify/multipot/light"
data modify storage dabsu:run run_custom.args set from storage dabsu:run form

function dabsu:z_priq/selected/update/any_context
data modify storage dabsu:run type.list set value []
data modify storage dabsu:run type.list append from storage dabsu:user data[0].target.type
function dabsu:z_priq/edit/que_api