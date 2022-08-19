SELECT 
alumni_id,
TableName_atta_id.atta_name,
grad_year,
school_name,
dept_name,
liaison
	FROM(SELECT 
        TableName_personal.id,
	TableName_academic.alumni_id,
	TableName_academic.atta,
	TableName_academic.grad_year,
	TableName_academic.school,
        CONCAT(TableName_schooldept_id.school_id,TableName_schooldept_id.dept_id) AS real_dept,
        TableName_schooldept_id.school_name,
	TableName_schooldept_id.dept_name,
        CONCAT(TableName_academic.school,TableName_academic.dept) AS real_dept2,
		TableName_academic.dept,
		TableName_academic.class,
		TableName_academic.liaison
		FROM TableName_academic 
        LEFT JOIN TableName_personal
		ON TableName_personal.id=TableName_academic.id
        INNER JOIN TableName_schooldept_id
		ON TableName_academic.school=TableName_schooldept_id.school_id)
		AS A
INNER JOIN TableName_atta_id
ON A.atta=TableName_atta_id.atta 
WHERE real_dept=real_dept2
AND id=''
;
