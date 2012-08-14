
status  1-active  0-inactive  2-locked(can not change anything)

#########################  organization unit structure  (ok)#########################
#[units] 单位,例如ASP,PLC,Callcenter,masp 等等,独立的事业单位,不分开业务和仓库,也不分类型,只用user role建立业务类型
id
code
name
shortname
region
status


#[unit_routings] 单位之间的业务指向,数据流向. 多个functions中共用
id
from_unit_code
to_unit_code
routing_type
status


#[unit_roles] 单位默认的roles  one to many
id
unit_code
role_code



#[roles] user为某个unit服务的role,在menu上,表现为menu group
id
code
name
description
current_url  # as a dashboard for a role

#[functions] 程序功能.  在menu上,表现为menu line. 如果有父子关系,则父菜单折叠起子菜单
#与unit routing不同.例如同一个routing有多个function实现
id
parent_id   # only two level, parent menu wrap children menu
code
name    
description

#[role_functions] 1role -> many functions
id
role_code
function_code


#[user_roles] 单账户多unit多role,每个unit对应一个完整的界面, 需切换后使用
id
user_id
unit_role_id
status

#########################  parts models products (ok)#########################
#[products]
id
code
name
description
status


#[series]
id
product_id
name
description



#[models]
id
product_id
series_id
model
name
description
status
preid         integer   #history data id


#[parts]
id
partnumber    nvarchar(50)
mapping_number  
name      nvarchar(50)
status        integer
preid         integer   #history data id


#[model_parts] many to many
id
model_id
part_id






#########################  common settings #########################
#[lookups]
id
status                integer
code                  varchar(50)
category              varchar(50)
description           nvarchar(500)


#[addresses]
id




#########################  orders #########################
#[part_orders]
id
number
reference_number
from_unit_id
to_unit_id
status
ship_address_id
bill_address_id
type    #TW from waiting for parts  T inwarranty  P outwarranty  VT to vendor in warranty  VP to vendor out warranty
requested_date
confirmed_date
shiped_date
received_date




#[part_order_items]
id
part_order_id
model_id
part_id
confirmed_part_id
status

requested_qty
confirmed_qty
shipped_qty
received_qty

requested_date
confirmed_date
shiped_date
received_date

requester_id
confirmer_id
shipper_id
receiver_id

from_part_order_item_id   # masp sum asp orders to be a new order to PLC
is_in_vendor_warranty     # order is in warranty ,but parts maybe outof vendor warranty
from_rma_detail_id        # 


#########################  call center #########################





#########################  rma #########################
#[rma_headers] return metierial authentication


#[rma_details] rma details info


#########################  return #########################



#########################  inventory(teardown) #########################
#(stock is what you have if you're selling items. Inventory includes what you have as your belongings.)





#########################  authorization & authentication #########################

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

