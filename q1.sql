
SELECT state_code, AVG(educational_attainment >= 39)
FROM cps
WHERE educational_attainment > -1
GROUP BY state_code
ORDER BY AVG(educational_attainment >= 39) DESC;

--Texas
