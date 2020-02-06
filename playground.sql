
select *
from baobab_prod.readings
where "postedAt"::date between '2019-09-19'::date and '2019-09-30';
-- where "updatedAt"::date between '2019-09-15'::date and current_date; -- current_date - integer '2'


select phone
from baobab_prod.usersview
where "registeredAt"::date = '2019-09-19'::date


select *
from baobab_prod."userTipProgress"
where "updatedAt"::date = '2019-09-20'::date

--========================================================================
--------------------------------------------------------------------------
--========================================================================
-------------------------------------------------------------------------- and "stepCount" = 12 and "tipIdentifier" = 'welcome-flow'
--========================================================================
--------------------------------------------------------------------------
--========================================================================


select ht."topicIdentifier", count(utp."tipIdentifier") as cnt
from baobab_prod."userTipProgress" as utp, baobab_prod.healthtips as ht
where utp."updatedAt" between '2019-01-01'::date and '2019-09-30'::date
and utp."tipIdentifier" = ht."tipIdentifier"
group by ht."topicIdentifier"
order by cnt desc;


select distinct phone, count("tipIdentifier") as cnt
from baobab_prod."userTipProgress"
where "updatedAt" between '2019-01-01'::date and '2019-09-30'::date
group by phone
order by cnt desc;



select *
from baobab_prod."userTipProgress"
where "updatedAt"::date = '2019-10-01'::date



--==================================================================== Weekly Stats Queries

select count(id)
from baobab_prod."userTipProgress"
where "updatedAt" between '2019-12-06'::date and '2019-12-12'::date

select count(distinct phone)
from baobab_prod."userTipProgress"
where "updatedAt" between '2019-12-06'::date and '2019-12-12'::date


select count(id)
from baobab_prod.readings
where "postedAt" between '2019-12-06'::date and '2019-12-12'::date
and "readingType" = 'sugar'

select count(distinct phone)
from baobab_prod.readings
where "postedAt" between '2019-12-06'::date and '2019-12-12'::date
and "readingType" = 'sugar'


select count(distinct phone)
from baobab_prod.readings
where "postedAt" between '2019-12-06'::date and '2019-12-12'::date
and "deviceReading" = TRUE


select count(distinct phone)
from baobab_prod."doctorQuestionFlows"
where "replyName" != 'Doctor'
and "postedAt" between '2019-12-06'::date and '2019-12-12'::date


select count(*)
from baobab_prod.profilesview
where gender = 'female'


select count(*)
from baobab_prod.profilesview
where type = 'type2'

select count(*)
from baobab_prod.profilesview
where hypertension::text = 'true'


select count(id)
from baobab_prod."doctorQuestionFlows"
where "replyName" != 'Doctor'
and "postedAt" between '2019-12-06'::date and '2019-12-12'::date



select coalesce(tbl1.phone, tbl2.phone) as phone, tbl1."registeredAt"::date, tbl1.country, tbl1.locale
from(
select *
from baobab_prod.usersview
where "registeredAt"::date between '2019-12-06'::date and '2019-12-11'::date
and locale = 'EG') as tbl1
full outer join (select *
from baobab_prod.usersview
where "registeredAt"::date between '2019-12-06'::date and '2019-12-11'::date
and country = 'egypt') as tbl2 on tbl1.phone = tbl2.phone


select * --count(distinct phone)
from baobab_prod.tpay
where "createdAt"::date between '2019-12-06'::date and '2019-12-12'::date
-----------------------------------------------------------------------------------------------
select *
from baobab_prod.usersview
where "registeredAt"::date between '2019-10-18'::date and '2019-10-23'::date


select * --count(distinct phone)
from baobab_prod.tpay
where "createdAt"::date between '2019-11-09'::date and '2019-11-15'::date


select coalesce(tbl1.phone, tbl2.phone) as phone, tbl1."registeredAt"::date, tbl1.country, tbl1.locale
from(
select *
from baobab_prod.usersview
where "registeredAt"::date between '2019-10-31'::date and '2019-11-07'::date
and locale = 'ZW') as tbl1
full outer join (select *
from baobab_prod.usersview
where "registeredAt"::date between '2019-10-31'::date and '2019-11-07'::date
and country = 'zimbabwe') as tbl2 on tbl1.phone = tbl2.phone




select count(distinct phone)
from baobab_prod.readings
where "postedAt"::date between '2019-10-24'::date and current_date
and "readingType" = 'sugar'



select *
from baobab_prod.tpay
where "createdAt"::date between '2019-11-16'::date and current_date
and "subscriptionType" = 'yearly'




select tbl1."tipIdentifier", count(distinct phone) as cnt, tbl2."topicIdentifier", tbl2."order"
from baobab_prod."userTipProgress" as tbl1,
     baobab_prod.healthtips as tbl2
where tbl1."tipIdentifier" = tbl2."tipIdentifier"
-- and tbl2."order" = 30
group by tbl1."tipIdentifier", tbl2."topicIdentifier", tbl2."order"
order by cnt desc



select *
from baobab_prod.healthtips
limit 10


select count(tbl1."tipIdentifier") as cnt, tbl1.phone
from baobab_prod."userTipProgress" as tbl1
group by tbl1.phone
order by cnt desc

select distinct tbl1."tipIdentifier"
from baobab_prod."userTipProgress" as tbl1
where tbl1.phone = '+254722403908'



select *
from baobab_prod."userTipProgress"
where phone = '+23059555815'
order by "updatedAt"::date desc


select * -- count("tipIdentifier")
from baobab_prod.healthtips
where "restrictedToDevice" != 'ussd'



select *
from baobab_prod."userTipProgress"
where "updatedAt"::date = current_date -- interval '7 days'

select *
from baobab_prod.readings
where "updatedAt"::date = current_date - interval '7 days'



select *
from
(select phone, count(id) as ReadingInputs
from baobab_prod.readings
where "postedAt"::date between (current_date - interval '7 day') and current_date
group by phone) as tbl1,
(select utp.phone, count(utp."tipIdentifier") as JourneysRead
from baobab_prod."userTipProgress" as utp,
     baobab_prod.healthtips as ht
where utp."tipIdentifier" = ht."tipIdentifier"
  and utp."updatedAt" ::date between (current_date - interval '7 day') and current_date
group by utp.phone) as tbl2
where tbl2.phone = tbl1.phone
order by JourneysRead desc, ReadingInputs desc;





select coalesce(tbl1.phone, tbl2.phone) as phone, tbl1."registeredAt"::date
from(
select *
from baobab_prod.usersview
where "registeredAt"::date between (current_date - interval '7 days') and current_date
and locale = 'ZW') as tbl1
full outer join (select *
from baobab_prod.usersview
where "registeredAt"::date between (current_date - interval '7 days') and current_date
and country = 'zimbabwe') as tbl2 on tbl1.phone = tbl2.phone



select *
from baobab_prod."userTipProgress"
where "updatedAt"::date = current_date


select distinct phone
from baobab_prod.readings
where "createdAt"::date = current_date


select *
from baobab_prod.usersview
where "registeredAt"::date = current_date


select tbl1.phone, tbl1.cnt, tbl1.locale, tbl1.country
from(
select utp.phone, count(utp.id) as cnt, usv.locale, usv.country
from baobab_prod."userTipProgress" as utp, baobab_prod.usersview as usv, baobab_prod.healthtips as ht
where utp.phone = usv.phone
  and ht."tipIdentifier" = utp."tipIdentifier"
  and ht."topicIdentifier" = 'diabetes'
  and (usv.locale in ('EN','EG','TZ','SI','US','KE','SC','ZW','UG','ZM','MU')
                                     or usv.country in ('zimbabwe','kenya','mozambique','united states','united arab emirates','qatar','egypt',
                                 'south africa','mauritius','uganda','algeria','tanzania','zambia','botswana','united kingdom','rwanda'))
group by utp.phone, usv.locale, usv.country
order by usv.locale, cnt desc) as tbl1
where tbl1.cnt >= 10;




select *
from baobab_prod.healthtips





select "topicIdentifier", count("tipIdentifier") as cnt
from baobab_prod.healthtips
group by "topicIdentifier"
order by cnt desc


'EN','EG','TZ','SI','US','KE','SC','ZW','UG','ZM','MU'

'zimbabwe','kenya','mozambique','united states','united arab emirates','qatar','egypt',
'south africa','mauritius','uganda','algeria','tanzania','zambia','botswana','united kingdom','rwanda',




'exercise','something-else','diabetes','hypertension','nutrition','sexual-health','mental-wellness','general-wellbeing-','Exercise','pregnancy'




select count(distinct phone)
from baobab_prod."userTipProgress"
where "updatedAt" between (current_date - interval '2 months') and current_date



select count(id)
from baobab_prod."userTipProgress"
where "updatedAt" between (current_date - interval '2 months') and current_date
and "tipIdentifier" != 'welcome-flow'




select count(id) --count(distinct phone)
from baobab_prod."doctorQuestionFlows"
where "replyName" != 'Doctor'
and "createdAt" between (current_date - interval '2 months') and current_date



select count(distinct phone)
from baobab_prod.readings
where "postedAt" between (current_date - interval '2 months') and current_date and "deviceReading" = true


select id
from baobab_prod."doctorQuestionFlows"
where "postedAt"::date = current_date





select * --"tipIdentifier", "topicIdentifier"
from baobab_prod.healthtips
where "restrictedToDevice" = 'ussd' and "uniqueCodeId" like 'KGM%'






select *
from baobab_prod.healthtips
where "restrictedToDevice" != 'ussd' and "topicIdentifier" = 'diabetes'



select uv.phone, uv.lang, count(ut.id) as cnt
from baobab_prod.usersview as uv, baobab_prod."userTipProgress" as ut
where lang = 'ar' and uv.phone = ut.phone
group by uv.phone, uv.lang
order by cnt desc





select *
from baobab_prod."userTipProgress"
where "updatedAt"::date between (current_date - interval '7 days') and current_date --between '2019-10-01' and current_date
and phone like '+20%'
order by "updatedAt"::date


select *
from baobab_prod.readings
where "postedAt"::date = current_date - interval '1 day'
and "readingType" = 'pressure'


select content, language, "postedAt", phone, "replyName", "topicIdentifier"
from baobab_prod."doctorQuestionFlows"
where
"replyName" != 'Doctor'and
"postedAt"::date = '2019-11-21' --between (current_date - interval '8 days') and current_date
--and phone = '+254722251116'
order by "postedAt" desc




select phone, locale, \“registeredAt\“\n
from baobab_prod.usersview\n
where \“registeredAt\” BETWEEN SYMMETRIC ‘2019-10-31T22:00:00.000Z’ AND ‘2019-11-26T22:00:00.000Z’\n
and (country  in (‘egypt’, ‘kenya’, ‘zimbabwe’, ‘somalia’, ‘germany’, ‘democratic republic of the congo’,\n
‘switzerland’, ‘turkey’, ‘mozambique’, ‘united states’, ‘slovenia’, ‘pakistan’, ‘bulgaria’,\n
‘italy’, ‘denmark’, ‘russia’, ‘united arab emirates’, ‘netherlands’, ‘qatar’, ‘iraq’, ‘egypt’,\n
‘afghanistan’, ‘ireland’, ‘south africa’, ‘mauritius’, ‘uganda’, ‘singapore’, ‘algeria’,\n
‘tanzania’, ‘zambia’, ‘france’, ‘botswana’, ‘namibia’, ‘united kingdom’, ‘rwanda’) or locale in\n
(‘EG’, ‘US’, ‘ZW’, ‘KE’, ‘EU’, ‘ZM’, ‘UG’, ‘MU’, ‘MU’))



select count(*)-- coalesce(tbl1.phone, tbl2.phone) as phone, tbl1."registeredAt"::date
from(
select *
from baobab_prod.usersview
where extract(month from "registeredAt"::date) = 11
and locale = 'EG') as tbl1
full outer join (select *
from baobab_prod.usersview
where extract(month from "registeredAt"::date) = 11
and country = 'egypt') as tbl2 on tbl1.phone = tbl2.phone


--August(08) = 4
--September(09) = 474
--October(10) = 1323
-- November(11) = 44


select *
from baobab_prod.users
where "registeredAt"::date between (current_date - interval '7 days') and current_date
order by "registeredAt"::date desc


select count(t1.id) as cnt, t1.phone, t2.name
from baobab_prod.readings as t1, baobab_prod.profiles as t2
where t1.phone = t2.phone
and "postedAt"::date between (current_date - interval '1 month') and current_date
group by t1.phone, t2.name
order by cnt desc








select *
from baobab_prod.readings
where phone = '+254721289887'
and "postedAt"::date between (current_date - interval '1 month') and current_date



select phone, count(id) as nr
from baobab_prod.readings
where "readingType" = 'sugar'
and "deviceReading" = True
group by phone
order by nr desc

select phone, count(id) as nr
from baobab_prod.readings
where "postedAt"::date between '2020-01-01'::date and current_date
group by phone
order by nr desc
--and "deviceReading" = True







