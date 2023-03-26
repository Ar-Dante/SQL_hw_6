--Знайти середній бал у групах з певного предмета.
SELECT gr.name [Group],d.name Discipline , ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g
JOIN [groups] gr ON gr.id = g.student_id
JOIN disciplines d ON d.id = g.discipline_id 
WHERE d.id = 1 --Вказати, по якому id шукаємо предмет 
ORDER BY avg_grade DESC
