SELECT 
id,
zh_name,
atta_name,
dDt_alumnidb_schooldept_id.school_name,
dDt_alumnidb_schooldept_id.dept_name,
grad_year
FROM(SELECT
     dDt_alumnidb_personal.id,
     dDt_alumnidb_personal.zh_name,
     dDt_alumnidb_personal.bye,
     dDt_alumnidb_atta_id.atta,
     dDt_alumnidb_atta_id.atta_name,
     dDt_alumnidb_academic.grad_year,
     dDt_alumnidb_academic.alumni_id,
     dDt_alumnidb_academic.school,
     dDt_alumnidb_academic.dept,
     CONCAT(dDt_alumnidb_academic.school,dDt_alumnidb_academic.dept) AS combined_dept,
     dDt_alumnidb_academic.class
	 FROM dDt_alumnidb_personal
	 INNER JOIN dDt_alumnidb_academic
	 ON dDt_alumnidb_personal.id=dDt_alumnidb_academic.id
  LEFT JOIN dDt_alumnidb_atta_id
	 ON dDt_alumnidb_academic.atta=dDt_alumnidb_atta_id.atta
    WHERE 
   	(bye=1)AND
	 	((zh_name = '')AND	
   	(alumni_id = '')AND	
	 	(grad_year='')AND	
		(school='')AND	
		(CONCAT(dDt_alumnidb_academic.school,dDt_alumnidb_academic.dept)='')AND	
	 	(class = ''))
     )
AS Temp_table
LEFT JOIN dDt_alumnidb_schooldept_id
ON combined_dept=dDt_alumnidb_schooldept_id.schooldept_id
