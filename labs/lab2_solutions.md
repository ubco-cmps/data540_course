# Lab 2 Solutions

##  Q1

```
select n_nationkey as id, n_name as name
from nation 
where n_regionkey = 1
```

##  Q2
```
select distinct o_custkey
from orders
where o_orderdate > '2018-11-25' and o_totalprice >= 265000 and o_totalprice <= 280000
order by o_custkey
```

##  Q2 with between

```
select distinct o_custkey
from orders
where o_orderdate > '2018-11-25' and o_totalprice between 265000 and 280000
order by o_custkey
```

##  Q3

```
select c_custkey, c_name, c_acctbal
from customer join nation on c_nationkey=n_nationkey
where n_nationkey < 2 and c_acctbal < 0
```

##  Q4

```
select p_name, s_name, n_name
from part join partsupp on p_partkey=ps_partkey join supplier on ps_suppkey=s_suppkey
     join nation on s_nationkey=n_nationkey
where (n_name = 'CANADA' or n_name = 'FRANCE') and p_name like '%ivory%'
order by s_name
limit 8
```

##  Q5 

```
select S.s_name, S2.s_name, S.s_phone, S2.s_phone, S.s_acctbal+S2.s_acctbal as totalBalance
from supplier S join supplier S2 on S.s_nationkey=S2.s_nationkey and S.s_suppkey < S2.s_suppkey
where left(S.s_phone,6) = left(S2.s_phone,6)
```
##  Q6

```
select count(*) as numCustomer, count(distinct c_nationkey) as numCountries, sum(c_acctbal) as totalBalance, avg(length(c_address)) as avgLength
from customer
where c_mktsegment in ('BUILDING', 'AUTOMOBILE', 'MACHINERY') and c_nationkey < 10
```

##  Q7

```
select c_mktsegment as marketSegment, n_name as nation, count(distinct c_custkey) as numCustomer, count(distinct o_orderkey) as numOrders, max(c_acctbal) as maxBalance, min(c_acctbal) as minBalance
from customer left join orders on c_custkey=o_custkey join nation on c_nationkey=n_nationkey
where n_name like '%A%'
group by c_mktsegment, n_name
having numCustomer > 10 and numOrders > 180 and maxBalance >= 9000
```

##  Q8

```select p_partkey, p_size
from part
where p_partkey not in (select l_partkey from lineitem where month(l_shipdate) = 5)
and p_size between 10 and 12
order by p_size desc, p_partkey desc
```

##  Q9

```
select c_name, c_acctbal
from customer
where c_acctbal = (select max(c_acctbal) from customer)
```

##  Q10

```
select concat(p_mfgr, ' - ', p_brand) as manufacturerBrand, p_partkey, totalQty
from (select l_partkey, sum(l_quantity) as totalQty
from lineitem
group by l_partkey) L join part on l_partkey = p_partkey
where totalQty >
(select avg(totalQty)
from (
select l_partkey, sum(l_quantity) as totalQty
from lineitem
group by l_partkey) L)*1.60
order by totalQty desc
```

##  OR (using HAVING)

```
select concat(p_mfgr, ' - ', p_brand) as manufacturerBrand, p_partkey, sum(l_quantity) as totalQty
from lineitem join part on l_partkey = p_partkey
group by p_mfgr, p_brand, manufacturerBrand, p_partkey
having sum(l_quantity) >
	(select avg(totalQty)
	from (
		select l_partkey, sum(l_quantity) as totalQty
		from lineitem
		group by l_partkey) L)*1.60
order by totalQty desc
```
