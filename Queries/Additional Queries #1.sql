---- Additional Queries #1 ---
-- 1952 Retiring Employees by Title- retirement_titles.csv

SELECT e.emp_no, 
       e.first_name,
	   e.last_name,
	   t.title,
	   t.from_date,
	   t.to_date
INTO retirement_titles1952 
FROM employees as e
    INNER JOIN titles as t 
	    ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1952-12-31')
ORDER BY e.emp_no

--- Use Dictinct with Orderby to remove duplicate rows- unique_titles.csv

SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
          rt.first_name,
		  rt.last_name,
		  rt.title
INTO unique_titles1952
FROM retirement_titles1952 as rt
ORDER by rt.emp_no, rt.to_date DESC;

-- Number of Retiring Employees by Title- retiring_titles.csv

SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles1952
FROM unique_titles1952 as ut
GROUP BY ut.title
ORDER BY COUNT (ut.emp_no) DESC;




-- 1953 Retiring Employees by Title- retirement_titles.csv

SELECT e.emp_no, 
       e.first_name,
	   e.last_name,
	   t.title,
	   t.from_date,
	   t.to_date
INTO retirement_titles1953 
FROM employees as e
    INNER JOIN titles as t 
	    ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1953-01-01' AND '1953-12-31')
ORDER BY e.emp_no

--- Use Dictinct with Orderby to remove duplicate rows- unique_titles.csv

SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
          rt.first_name,
		  rt.last_name,
		  rt.title
INTO unique_titles1953
FROM retirement_titles1953 as rt
ORDER by rt.emp_no, rt.to_date DESC;

-- Number of Retiring Employees by Title- retiring_titles.csv

SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles1953
FROM unique_titles1953 as ut
GROUP BY ut.title
ORDER BY COUNT (ut.emp_no) DESC;




-- 1954 Retiring Employees by Title- retirement_titles.csv

SELECT e.emp_no, 
       e.first_name,
	   e.last_name,
	   t.title,
	   t.from_date,
	   t.to_date
INTO retirement_titles1954
FROM employees as e
    INNER JOIN titles as t 
	    ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1954-01-01' AND '1954-12-31')
ORDER BY e.emp_no

--- Use Dictinct with Orderby to remove duplicate rows- unique_titles.csv

SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
          rt.first_name,
		  rt.last_name,
		  rt.title
INTO unique_titles1954
FROM retirement_titles1954 as rt
ORDER by rt.emp_no, rt.to_date DESC;

-- Number of Retiring Employees by Title- retiring_titles.csv

SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles1954
FROM unique_titles1954 as ut
GROUP BY ut.title
ORDER BY COUNT (ut.emp_no) DESC;




-- 1955 Retiring Employees by Title- retirement_titles.csv

SELECT e.emp_no, 
       e.first_name,
	   e.last_name,
	   t.title,
	   t.from_date,
	   t.to_date
INTO retirement_titles1955 
FROM employees as e
    INNER JOIN titles as t 
	    ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1955-01-01' AND '1955-12-31')
ORDER BY e.emp_no

--- Use Dictinct with Orderby to remove duplicate rows- unique_titles.csv

SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
          rt.first_name,
		  rt.last_name,
		  rt.title
INTO unique_titles1955
FROM retirement_titles1955 as rt
ORDER by rt.emp_no, rt.to_date DESC;

-- Number of Retiring Employees by Title- retiring_titles.csv

SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles1955
FROM unique_titles1955 as ut
GROUP BY ut.title
ORDER BY COUNT (ut.emp_no) DESC;











