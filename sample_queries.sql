--- countries that performed the best in 2021

select country, gold, silver, bronze total  
from medals
where year = 2021
order by total desc
limit 10;


--- athletes that have the most medals
select m.athlete, m.sport, count(total) from MultiWinnningAthletes m
group by m.athlete, m.sport
order by count desc;


--- what sport did United States perform best over the years

select ew.year, ew.discipline, count(ew.medal) from eventwinners ew
left join countries c on c.NOC = ew.Country
where c.NOC= 'United States'
group by ew.year, ew.discipline
order by year desc, count desc;



select  ew.discipline, count(ew.medal) from eventwinners ew
left join countries c on c.NOC = ew.Country
where c.NOC= 'United States'
group by  ew.discipline
order by  count desc;

--- countries that performed best in each discipline over multiple years
select  ew.discipline, c.Name, count(ew.medal) from eventwinners ew
left join countries c on c.NOC = ew.Country
group by  ew.discipline,  c.Name
order by  ew.discipline, count desc;

---Athletes who performed best in Archery
select ew.athlete, c.Name, count(ew.medal) from eventwinners ew
left join countries c on c.NOC = ew.Country
where ew.discipline = 'Archery'
group by ew.athlete, c.Name
order by count desc


-- United States Cycling Data

select * from eventwinners ew
left join events e on ew.discipline = e.discipline
left join countries c on ew.country = c.NOC
where e.sport = 'Cycling' and c.Name = 'United States'



--- Russia's Medal Count Throughout the Years
select m.year, m.country, m.gold, m.silver, m.bronze, m.total from medals m
left join countries c on m.country = c.NOC
where c.Name = 'Russia'

