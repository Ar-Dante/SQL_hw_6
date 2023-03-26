--Список курсів, які певному студенту читає певний викладач.
SELECT s.fullname Student ,d.name Discipline, t.fullname Teacher 
FROM grades g
LEFT JOIN students s ON s.id = g.student_id 
LEFT JOIN disciplines d ON d.id = g.discipline_id 
LEFT JOIN teachers t ON t.id = d.teacher_id 
WHERE s.id = 4 AND t.id = 4 --Вказати, по якому id шукати студента та вчителя
GROUP BY d.id 


