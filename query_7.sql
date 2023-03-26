--Знайти оцінки студентів у окремій групі з певного предмета.
SELECT s.fullname Student, gr.name [Group], g.grade Grade, d.name Discipline
FROM grades g 
LEFT JOIN students s ON s.id  = g.student_id 
LEFT JOIN disciplines d ON d.id = g.discipline_id 
LEFT JOIN groups  gr ON gr.id  = s.group_id 
WHERE gr.id = 1 AND d.id = 2 -- Вказати, по якому id шукати групу та предмет

