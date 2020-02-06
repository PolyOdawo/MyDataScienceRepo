select  * -- count(*)
from fuelsales
where extract(MONTH from txdate::date) = 03

-------------analysis on the sales channels---------------------------------------------------
select count(distinct id), type
from seller
where type = 'Referrer' -- CSR = 50, Agent = 500, Referrer = 9950
group by type;

select count(*) --count(distinct cl.sellerid)
from seller as sl, cookersales as cl
where cl.sellerid = sl.id
  and sl.type = 'CSR';

-- CSR contributes to 925 cooker sales with all 50/50 making a sale
-- CSR sale list ordered

select distinct cl.sellerid, count(cl.customerid) as nsl
from seller as sl, cookersales as cl
where cl.sellerid = sl.id
  and sl.type = 'CSR'
group by cl.sellerid
order by nsl desc;
-------------------------------------------------------------------------------------------------
select count(*) -- count(distinct cl.sellerid)
from seller as sl, cookersales as cl
where cl.sellerid = sl.id
  and sl.type = 'Agent';
-- Agent contributes to 605 cooker sale with only 342/500 making a sale
-- Agent sale order list

select distinct cl.sellerid, count(cl.customerid) as nsl
from seller as sl, cookersales as cl
where cl.sellerid = sl.id
  and sl.type = 'Agent'
group by cl.sellerid
order by nsl desc;

-----------------------------------------------------------------------------------------------------------
select count(distinct cl.sellerid)
from seller as sl, cookersales as cl
where cl.sellerid = sl.id
  and sl.type = 'Referrer';
-- Referrer contributes to 970 cooker sales with only 404/10000 making a sale
-- Referrer sale order list

select distinct cl.sellerid, count(cl.customerid) as nsl
from seller as sl, cookersales as cl
where cl.sellerid = sl.id
  and sl.type = 'Referrer'
group by cl.sellerid
order by nsl desc;


------analysis on cooker sales----------------------------------------------------------------------------

--how many cookers were sold
select count(*) -- max(saledate::date)
from cookersales -- 2500 cookers sold in January of 2019
where customertype = 'restaurant' -- 1245/2500 cookers sold to households  -- restaurant sales: 1255/2500


select count(*)
from cookersales
where saleterritory = 'east' -- 652 sold in the east, 583 sold in the west, 634 sold in the north, 631 sold in the south


--analysis on fuel sales------------------------------------------------------------------------------------------------------

select sum(literssold::numeric) -- 70415.396 liters of fuel sold total in 3 monts (Q1 2019)
from fuelsales
where extract(month from txdate::date) = 03;  -- 14417.681 liters sold in Jan , 26728.018 liters sold in Feb , 29269.697 liters sold in Mar


select *
from cookersales as cl
where cl.customerid not in (select fs.customerid
                from fuelsales as fs);            -- 47/2500 cooker made fuel purchases



select customerid, sum(literssold::numeric) as qntb -- 70415.396 liters of fuel sold total in 3 monts (Q1 2019)
from fuelsales
group by customerid
order by qntb desc;

select count(customerid), type
from cookersales as cs, seller as sl
where cs.sellerid = sl.id
group by type

select sum(fs.literssold::numeric) as qnt, tl1.type
from fuelsales as fs, (
select *
from cookersales as cs, seller as sl
where cs.sellerid = sl.id ) as tl1
where tl1.customerid = fs.customerid
group by tl1.type
order by qnt desc;

---------------sales productivity by channel-------------------------------------------------

select totalsales, tbl1.type as channel, chnreps as nosalesreps, (totalsales/chnreps::float) as productivity
from (
select count(cl.customerid) as totalsales, sl.type
from cookersales as cl, seller as sl
where cl.sellerid = sl.id
group by sl.type) as tbl1,
(select count(distinct id) as chnreps , type
from seller
group by type) as tbl2
where tbl1.type = tbl2.type


select avg(tbl1.sales)/30::float
from(
select sl.id, count(cl.customerid) as sales
from cookersales as cl, seller as sl
where cl.sellerid = sl.id and sl.type = 'CSR'
group by sl.id) as tbl1;


--------average fuel sold by cooker by month by agent-----------------------------

select sum(fs.literssold::numeric)/count(cs.customerid) as fuelusedpercooker ,
       extract(month from fs.txdate::date) as month,
       sl.type
from fuelsales as fs, cookersales as cs, seller as sl
where fs.customerid = cs.customerid and sl.id = cs.sellerid
group by month, sl.type;


-------------total fuel sold by month----------------------

select sum(literssold::numeric)
from fuelsales
where extract(month from txdate::date) = 2;




