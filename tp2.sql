-- Exercice 1 --
USE test_1;
SELECT * FROM users ORDER BY salary DESC LIMIT 1;


-- Exercice 2 -- 

USE test_2;
SELECT
    d.name AS department_name,
    u_manager.name AS manager_name,
    COUNT(e.user_id) AS employee_count
FROM department d
JOIN users u_manager ON d.manager_id = u_manager.id
LEFT JOIN employees e ON e.user_id = u_manager.id OR e.user_id IN (SELECT id FROM users)
JOIN users u ON e.user_id = u.id
GROUP BY d.name, u_manager.name
ORDER BY d.name;

