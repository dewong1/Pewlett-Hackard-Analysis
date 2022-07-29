---- Additional Queries #2 ---
-- Number of Mentorship Eligible Employees by Title


SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT (ut.emp_no) DESC;

-- Employees Eligible for Mentorship Program

SELECT DISTINCT ON (e.emp_no) e.emp_no,
          e.first_name,
		  e.last_name,
		  e.birth_date,
		  de.from_date,
		  de.to_date,
		  t.title
INTO mentorship_eligibility 
FROM employees as e 
     INNER JOIN dept_emp as de 
	 ON (e.emp_no = de.emp_no)
	 INNER JOIN titles as t 
	 ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
        AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;


-- Number of Mentorship Eligible Employees by Title- 

SELECT COUNT(me.emp_no), me.title
INTO mentorship_eligibility_titles
FROM mentorship_eligibility as me
GROUP BY me.title
ORDER BY COUNT (me.emp_no) DESC;

