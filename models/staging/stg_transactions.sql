
SELECT * 
FROM {{ source('FRFA', 'TRANSACTION_DATA') }}