function dabsu:z_private_d/uid/get
$data modify storage dabsu:user data[0].form set value $(form)

function dabsu:z_priq/edit/potential/parser/get_index with storage dabsu:user data[0].form
data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/edit/potential/index"}
data modify storage dabsu:run proceed merge from storage dabsu:user data[0].editing
function dabsu:z_priq/edit/exe with storage dabsu:run proceed