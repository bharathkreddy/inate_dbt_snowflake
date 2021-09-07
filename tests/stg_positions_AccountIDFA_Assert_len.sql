-- Assert test to see if lenght of 'Account ID (FA)' column in stg_positions is 7

select
	len(ACCOUNT_ID_FA) as length_of_account_no
from {{ ref('stg_positions') }}
group by len(ACCOUNT_ID_FA) 
having not(length_of_account_no = 7)
