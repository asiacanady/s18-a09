.headers ON
.mode columns

SELECT B.edited_sex, C.educational_attainment, AVG(A.duration)/60 AS chores
FROM activities AS A
JOIN roster AS B on A.case_id = B.case_id
JOIN cps as C on A.case_id = C.case_id
WHERE activity_code / 10000 IN (02) AND C.educational_attainment > 0
GROUP BY B.edited_sex, C.educational_attainment;
