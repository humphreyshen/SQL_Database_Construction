SELECT 
dDt_alumnidb_personal.id,
dDt_alumnidb_academic.alumni_id,
dDt_alumnidb_academic.atta,
dDt_alumnidb_academic.grad_year,
dDt_alumnidb_academic.school,
CONCAT(dDt_alumnidb_academic.school,dDt_alumnidb_academic.dept) AS combined_dept, #combined_dept=系
dDt_alumnidb_academic.class,
dDt_alumnidb_academic.liaison
FROM dDt_alumnidb_academic 
INNER JOIN dDt_alumnidb_personal
ON dDt_alumnidb_personal.id=dDt_alumnidb_academic.id
WHERE dDt_alumnidb_personal.id='';
