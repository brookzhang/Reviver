

#[units]
id
name
shortname
region
status


#[users]
id			
email			
encrypted_password			
reset_password_token			
reset_password_sent_at			
remember_created_at			
sign_in_count			
current_sign_in_at			
last_sign_in_at			
current_sign_in_ip			
last_sign_in_ip			
created_at			
updated_at			
admin


#[roles]
id
code    #get description from lookups


#[functions]
id
code    #get description from lookups


#[role_functions]
id
role_id
function_id




#[user_roles] 单账户多单位多role,每个role对应一个完整的界面, 需切换后使用
id
unit_id
role_id
status






#[parts]
id
partnumber    nvarchar(50)
partname      nvarchar(50)
type          integer
status        integer


#[orders]
id
order_number
order_title
item_count
amount
status

#[order_items]
id
order_id



#[lookups]
id
status                integer
code                  varchar(50)
category              varchar(50)
description           nvarchar(500)





#[rails_admin_histories]
id			
message			
username			
item			
table			
month			
year			
created_at			
updated_at
