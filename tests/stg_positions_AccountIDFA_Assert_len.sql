-- Assert test to see if lenght of 'Account ID (FA)' column in stg_positions is 7

select
	len("Account ID (FA)") as length_of_account_no
from {{ ref('stg_positions') }}
group by len("Account ID (FA)") 
having not(length_of_account_no = 7)
