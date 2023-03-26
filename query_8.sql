--Знайти середній бал, який ставить певний викладач зі своїх предметів.
SELECT t.fullname Teacher, ROUND(AVG(g.grade), 2) average_grade
FROM grades g 
JOIN disciplines d ON d.id = g.discipline_id 
JOIN teachers t ON t.id = d.teacher_id 
WHERE t.id = 4 -- Вказати, по якому id шукати вчителя

