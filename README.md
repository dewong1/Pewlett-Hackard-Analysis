# Pewlett-Hackard-Analysis
Performing analysis on Pewlett Hackard (PH) database department to get this organized for the company. 

## Overview of Project
Using *PostgreSQL* to create a database and *pgAdmin* to work with the data imported. The manager given us two more assignments. The purpose of this analysis was to: 1) Determine the number of retiring employees per title, and 2) Identify employees who are eligible to participate in a mentorship program. Afterwards, we write a report that summarizes the analysis and help prepare the manager for the "silver tsunami" as many current employees reach retirement age. 

Within the first table (retirement_titles.csv) included: *employee number*, *first and last name*, *position title*, and *from and to date*. In the second table (mentorship_eligibility.csv), included: *employee number*, *first and last name*, *birth date*, *from and to date*, and *position title*. 


## Results

This data table shows the number of retiring employees per title: [retiring_titles.csv](https://github.com/dewong1/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv)

This data table shows employees who are eligible to participate in a mentorship program: [mentorship_eligibility.csv](https://github.com/dewong1/Pewlett-Hackard-Analysis/blob/main/Data/mentorship_eligibility.csv)

### Four major points from the two analysis deliverables 

* According to the retiring_titles.csv data, it appears that the two position titles with the most retirement are: *Senior Engineer* (29,414) and *Senior Staff* (28,254), followed up with third most retired position: *Engineer* (14,222).

* Based on the point above, *Senior Engineer* and *Senior Staff* positions are in current high priority when it comes to the company's need of filling potential opened roles.

* According to the mentorship_eligibility.csv data, there are currently 1,549 employees that qualify for the mentorship program.

* Based on the data, there are more people retiring (<70,000) than employees eligible for the mentorship program (1,549), which means that the company will have to create an efficient program that can cover the disparity between the number of people retiring and the number of people who can be mentored to fill these positions. 

## Summary

### 1) How many roles will need to be filled as the "silver tsunami" begins to make an impact? 

Currently the employees listed in the retirement_titles.csv are employees who have birth dates between '1952-01-01' AND '1955-12-31'. To determine the number of roles needed to be filled as the "silver tsunami" begins to make an impact, we can create a data table that categorizes the retirees into the selected age groups (1952, 1953, 1954, & 1955). And with that data, similar to our retiring_titles.csv, recreate a table that shows the number of retiring employees per title. But this time, the data will reflect the the count number per each year (separate table) [(Query #1)](https://github.com/dewong1/Pewlett-Hackard-Analysis/blob/main/Queries/Additional%20Queries%20%231.sql). This will give insight for the company on the possible estimated amount of retirees for each of the following four years. For example, the TOTAL number of roles needed to be filled for the position *Senior Engineer* is 29,414. But categorized into four years of *1952 retirees*, *1953 retirees*, *1954 retirees*, and *1955 retirees*, these are the total number of roles needed to be filled for the position *Senior Engineer* for each year respectively-- 6921, 7299, 7535, and 7659.


### 2) Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? 

A beneficial query to create that can provide more insight is to group the data in the mentorship_eligibility.csv by title. This will show the number of employees eligible for the mentorship program by position title [(Query #2)](https://github.com/dewong1/Pewlett-Hackard-Analysis/blob/main/Queries/Additional%20Queries%20%232.sql). Comparing both tables of the number of retirees by title and number of eligible employees to participate in a mentorship program, it appears that in every category of position title: *Senior Engineer*, *Senior Staff*, *Engineer*, *Staff*, *Technique Leader*, and *Assistant Engineer*, the number of retirees are greater than the eligible employees to participate in a mentorship program. So it seems like there will be enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees. However, finding enough additional individuals to hire and fill the possible opened positions is another question.



