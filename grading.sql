SELECT u.name, sum(correct) as grade
FROM users u
JOIN answers a on a.user_id = u.id
JOIN choices c on a.choice_id = c.id
GROUP BY u.name
ORDER BY sum(correct)
