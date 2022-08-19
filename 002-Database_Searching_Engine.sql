SELECT 
id,
zh_name,
atta_name,
TableName_schooldept_id.school_name,
TableName_schooldept_id.dept_name,
grad_year
FROM(SELECT
     TableName_personal.id,
     TableName_personal.zh_name,
     TableName_personal.bye,
     TableName_atta_id.atta,
     TableName_atta_id.atta_name,
     TableName_academic.grad_year,
     TableName_academic.alumni_id,
     TableName_academic.school,
     TableName_academic.dept,
     CONCAT(TableName_academic.school,TableName_academic.dept) AS combined_dept,
     TableName_academic.class
	 FROM TableName_personal
	 INNER JOIN TableName_academic
	 ON TableName_personal.id=TableName_academic.id
  LEFT JOIN TableName_atta_id
	 ON TableName_academic.atta=TableName_atta_id.atta
    WHERE 
   	(bye=1)AND
	 	((zh_name = '')AND	
   	(alumni_id = '')AND	
	 	(grad_year='')AND	
		(school='')AND	
		(CONCAT(TableName_academic.school,TableName_academic.dept)='')AND	
	 	(class = ''))
     )
AS Temp_table
LEFT JOIN TableName_schooldept_id
ON combined_dept=TableName_schooldept_id.schooldept_id
