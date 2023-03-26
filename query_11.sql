--Середній бал, який певний викладач ставить певному студентові.
SELECT t.fullname Teacher,s.fullname Student, ROUND(AVG(g.grade), 2) average_grade
FROM grades g 
JOIN disciplines d ON d.id = g.discipline_id 
JOIN teachers t ON t.id = d.teacher_id 
JOIN students s ON s.id = g.student_id 
WHERE t.id = 2 AND s.id = 1 --Вкахати, по якому id шукати вчителя та студента

