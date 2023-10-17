/*
London Buse Safety, January 2015 to September 2018
*/



Select *
From Bus_Safety


--Number of incidents by borough
Select Borough, count(Borough) as CountBorough
From [Bus Safety ].[dbo].[Bus_Safety]
Group by Borough
Order by CountBorough Desc


--Number of incidents by borough  event type
SELECT Borough, count(Borough) as CountBorough, [Incident Event Type]
FROM [Bus Safety ].[dbo].[Bus_Safety]
Group by Borough, [Incident Event Type]
Order by  Borough, CountBorough desc


--Number of incidents by route
Select route,  count(route) as RouteCount
From [Bus Safety ].[dbo].[Bus_Safety]
--Where Borough = 'Westminster'
Group by route
Order by RouteCount desc


--Number of incidents over time
Select Datepart(month,[date of incident]) as Month,count([Date of Incident]) as MonthCount
FROM [Bus Safety ].[dbo].[Bus_Safety]
--Where Year = '2015'
Group by [Date Of Incident]
Order by [Date Of Incident]


--Number of incidents by season
SELECT Year,Datepart(q,[date of incident]) Quarter, 
QuarterCount= case(DATEPART(q,[Date Of Incident]))
when 1 then count([Date Of Incident])
when 2 then count([Date Of Incident])
when 3 then count([Date Of Incident])
when 4then count([Date Of Incident])
else 0
end
FROM [Bus Safety ].[dbo].[Bus_Safety]
--Where Borough = 'westminster'
Group by Year,Datepart(q,[date of incident])
Order by Year, Quarter







