create database bank;
use bank;   -- star schema (banking-- fact table , gender,bankingrelationship,investmentadvisor -- dimension table)

select * from banking;

ALTER TABLE banking
CHANGE COLUMN `ï»¿Client ID` `Client ID` VARCHAR(50);

ALTER TABLE bankingrelationship
CHANGE COLUMN `ï»¿BRId` `BRId` int;

ALTER TABLE gender
CHANGE COLUMN `ï»¿GenderId` `GenderId` int;

ALTER TABLE investmentadvisor
CHANGE COLUMN `ï»¿IAId` `IAId` int;

#check the tables 

select * from gender;
select * from bankingrelationship;
select * from investmentadvisor;
----------------------------------------------------------------------------

#1. Overview (Executive summary)
-- Q1. How many clients does the bank currently serve?

select count(*) as 'Total Clients' from banking;

-- Q2. What is the total value of deposits across all clients?

select sum(`Bank Deposits`) as 'Total Deposits' from banking;

-- Q3. What is the total business lending amount provided to clients?

select sum(`Business Lending`) as 'Total Lending' from banking;

-- Q4. What is the average client risk weighting?

select round(avg(`Risk Weighting`),2) as Risk from banking;

#Customer Demographics
-- Q5. How many clients are male vs. female?

select g.gender,count(*) as ClientCount
from banking b
join gender g
on b.GenderId=g.GenderId
group by g.gender;

-- Q6. How are clients distributed across age groups?

select case 
     when Age <25 then 'Under 25'
     when Age between 25 and 50 then '25-50'
     when Age between 51 and 65 then '51-65'
     else '65+'
end as `Age Group`,
count(*) as Clients
from banking 
group by `Age Group`;
     
-- Q7. Which nationalities are most common among clients?

select  Nationality, COUNT(*) AS ClientCount
from banking
group by Nationality
order by ClientCount DESC;

-- Q8. What are the top occupations of clients?

select  Occupation, COUNT(*) AS ClientCount
from banking
group by Occupation
order by ClientCount DESC
limit 5;

#Banking Products & Relationships

-- Q9. What is the distribution of deposits across different banking relationships (Retail, Institutional, Private Bank, Commercial)?

select br.`Banking Relationship` ,sum(`Bank Deposits`) as 'Total Deposits'
from banking b
join BankingRelationship br
on b.BRId=br.BRId
group by br.`Banking Relationship`;

-- Q10. What is the total business lending per banking relationship?

select br.`Banking Relationship` ,sum(`Business Lending`) as 'Total Lending'
from banking b
join BankingRelationship br
on b.BRId=br.BRId
group by br.`Banking Relationship`;
-- Q11. What is the average deposit and lending by loyalty tier (Jade, Silver, Gold, Platinum)?

select `Loyalty Classification`,avg(`Bank Deposits`) as AvgDeposits,avg(`Business Lending`) as AvgLending
from banking
group by `Loyalty Classification`;

-- Q12. Which loyalty tier owns the most properties?

select `Loyalty Classification`, sum(`Properties Owned`) AS TotalProperties
from banking
group by  `Loyalty Classification`
order by TotalProperties DESC
limit 1;

#Advisor Insights

-- Q13. How many clients does each investment advisor handle?

select ia.`Investment Advisor`, COUNT(*) AS ClientCount
from banking b
join InvestmentAdvisor ia ON b.IAId = ia.IAId
GROUP BY ia.`Investment Advisor`;

-- Q14. What is the total deposits and lending managed by each investment advisor?

select ia.`Investment Advisor`, SUM(b.`Bank Deposits`) AS TotalDeposits,SUM(b.`Business Lending`) AS TotalLending
from banking b
join InvestmentAdvisor ia ON b.IAId = ia.IAId
group by ia.`Investment Advisor`;

-- Q15. How do fee structures (High, Mid, Low) distribute across clients?

select `Fee Structure`, COUNT(*) AS ClientCount
from banking 
group by `Fee Structure`;

-- Q16. Which advisor manages the highest total deposits?

select ia.`Investment Advisor`, SUM(b.`Bank Deposits`) AS TotalDeposits
from banking b
join InvestmentAdvisor ia ON b.IAId = ia.IAId
group by ia.`Investment Advisor`
order by ia.`Investment Advisor` desc
limit 1;