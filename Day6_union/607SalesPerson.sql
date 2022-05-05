select name
from SalesPerson 
where sales_id not in 
(
    select sales_id
    from Orders a
    join Company b
    on a.com_id = b.com_id
    where b.name = 'RED' 
) 

