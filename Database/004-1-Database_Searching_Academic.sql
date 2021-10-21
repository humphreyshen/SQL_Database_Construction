SELECT 
alumni_id,
dDt_alumnidb_atta_id.atta_name,
grad_year,
school_name,
dept_name,
liaison
	FROM(SELECT 
        dDt_alumnidb_personal.id,
	dDt_alumnidb_academic.alumni_id,
	dDt_alumnidb_academic.atta,
	dDt_alumnidb_academic.grad_year,
	dDt_alumnidb_academic.school,
        CONCAT(dDt_alumnidb_schooldept_id.school_id,dDt_alumnidb_schooldept_id.dept_id) AS real_dept,
        dDt_alumnidb_schooldept_id.school_name,
	dDt_alumnidb_schooldept_id.dept_name,
        CONCAT(dDt_alumnidb_academic.school,dDt_alumnidb_academic.dept) AS real_dept2,
		dDt_alumnidb_academic.dept,
		dDt_alumnidb_academic.class,
		dDt_alumnidb_academic.liaison
		FROM dDt_alumnidb_academic 
        LEFT JOIN dDt_alumnidb_personal
		ON dDt_alumnidb_personal.id=dDt_alumnidb_academic.id
        INNER JOIN dDt_alumnidb_schooldept_id
		ON dDt_alumnidb_academic.school=dDt_alumnidb_schooldept_id.school_id)
		AS A
INNER JOIN dDt_alumnidb_atta_id
ON A.atta=dDt_alumnidb_atta_id.atta 
WHERE real_dept=real_dept2
AND id=''
;
