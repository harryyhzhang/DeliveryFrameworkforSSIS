 
 
 


 declare @cnt int
declare @desc varchar(500)


select @cnt=count(*)
from (select * from dimproduct 
where englishProductName in ('testproduct')
) x
 

if @cnt=0 
begin
	RAISERROR('Did not found requried data record', 16,  1 ) ;
end
else
begin
   print CONCAT(@desc,' passed!')
end