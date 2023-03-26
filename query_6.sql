--Знайти список студентів у певній групі.
SELECT s.fullname Student, g.name [Group]
FROM groups g 
LEFT JOIN students s ON s.group_id  = g.id 
WHERE g.id = 1 --Вказати, по якій групі шукаємо студентів

