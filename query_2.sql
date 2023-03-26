--Знайти студента із найвищим середнім балом з певного предмета.
SELECT s.fullname, ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN disciplines d ON d.id = g.discipline_id 
WHERE d.id = 2 --Вказати, по якому предмету шукаємо студента
GROUP BY s.id 
ORDER BY avg_grade DESC
LIMIT 1;