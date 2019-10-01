select * from [dbo].[Rainfall_Acc_Data] where station_id = '3510001'
order by rec_date Desc 


use tmdrfonline


select convert(varchar(10), rec_date ,103) as Date, 
	count(distinct(station_id)) as StationCount
from Rainfall_Acc_Data
where year(rec_date)= 2019 
	and month(rec_date) = 7 
	and (rf_15m is not null and rf_30m is not null and rf_1h is not null and rf_2h is not null 
		and rf_3h is not null and rf_6h is not null and rf_12h is not null and rf_24h is not null  
		and rf_48h is not null and rf_72h is not null
	  )
group by rec_date
--order by rec_date desc
order by rec_date 



select top 1* from rainfall_acc_data 
--select convert(datetime, rec_date,103+'17:45') from rainfall_acc_data 
select top 1 convert(varchar(10), rec_date ,103)+ ' '+ convert(varchar(3),rec_time_hr)+':'+convert(varchar(3),rec_time_min) from rainfall_acc_data 





01/06/2019	59
02/06/2019	59
03/06/2019	793
04/06/2019	982
05/06/2019	834
06/06/2019	835
07/06/2019	992
08/06/2019	980
09/06/2019	980
10/06/2019	848
11/06/2019	992
12/06/2019	845



04/11/2018	515
03/11/2018	991
02/11/2018	552
01/11/2018	533
31/10/2018	529
30/10/2018	993
29/10/2018	528
28/10/2018	537
27/10/2018	532
26/10/2018	532
25/10/2018	542
24/10/2018	532
23/10/2018	524
22/10/2018	522
21/10/2018	511
20/10/2018	516
19/10/2018	580
18/10/2018	687
17/10/2018	724
16/10/2018	460
15/10/2018	955
14/10/2018	448
13/10/2018	583
12/10/2018	449
11/10/2018	945
10/10/2018	362
09/10/2018	423
08/10/2018	404



select station_id, rec_date, count(rec_time_hr) as stncount
into #t1 
from [dbo].[Rainfall_Acc_Data]
where year(rec_date)= 2018 
and (rf_15m is not null and rf_30m is not null and rf_1h is not null) 
group by station_id, rec_date
having count(rec_time_hr) > 96/2

select * from #t1
select count(distinct(station_id)) from #t1 where year(rec_date)= 2018 
group by 

select * from [dbo].[Rainfall_Acc_Data]
select S.station_id, S.station_name, S.remark , S.province_name 
into #S1
from station_data S

drop table #s1

select S.station_id, S.station_name, S.remark , S.province_name 
into #S1
from station_data S
where remark in ('820' , '110')


select province_name, count(*) as countStation into #s2 from #s1 group by province_name 

select S.Province_name



select * from station_data where station_id = 3000007


select province_name, station_id, station_name, remark, '/' as Modem  from station_data where remark in(110, 820) order by station_id
select * from [dbo].[Station_Mas]
select * from [dbo].[Station_Log]
select * from [dbo].[Station_Data_2018]

select * from [dbo].[Station_Data_2018] where station_id not in (select station_id from station_data)

select * from Station_Data_2018 

use tmdwhdb

select * from [dbo].[whindexradar1]


