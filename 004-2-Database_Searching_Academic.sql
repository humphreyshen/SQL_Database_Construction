SELECT 
TableName_personal.id,
TableName_academic.alumni_id,
TableName_academic.atta,
TableName_academic.grad_year,
TableName_academic.school,
CONCAT(TableName_academic.school,TableName_academic.dept) AS combined_dept, #combined_dept=系
TableName_academic.class,
TableName_academic.liaison
FROM TableName_academic 
INNER JOIN TableName_personal
ON TableName_personal.id=TableName_academic.id
WHERE TableName_personal.id='';
