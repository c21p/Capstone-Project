create database credit_card;

use credit_card;

show columns from credit_card_details;

--- Quesions ---

--- Group the customers based on their income type and find the average of their annual income.

select type_income, avg(annual_income) as avg_annual_income from credit_card_details group by type_income;

--- Find the female owners of cars and property.

select id, gender, car_owner, property_owner from credit_card_details where gender = 'F' and car_owner = 'Y' and property_owner = 'Y';

--- Find the male customers who are staying with their families.

select id, gender, housing_type from credit_card_details where gender = 'M' and housing_type =  'With parents';

--- Please list the top five people having the highest income.

select id, annual_income from credit_card_details order by annual_income desc limit 5;

--- How many married people are having bad credit?

select count(id) from credit_card_details where marital_status = 'Married' and approval_status = 1;

--- What is the highest education level and what is the total count?

select count(id) from credit_card_details where education = 'Higher education';

--- Between married males and females, who is having more bad credit?

select gender, count(*) from credit_card_details where marital_status = 'Married' and approval_status = 1 group by gender order by count(*) desc limit 1;