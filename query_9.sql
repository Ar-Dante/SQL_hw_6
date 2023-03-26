--Знайти список курсів, які відвідує студент
SELECT s.fullname Student,d.name Discipline 
FROM disciplines d 
LEFT JOIN students s ON s.id = g.student_id 
LEFT JOIN grades g ON g.discipline_id = d.id 
WHERE s.id =2 --Вказати, по якому id шукати студента
GROUP BY d.id 