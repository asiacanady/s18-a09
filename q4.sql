SELECT COUNT(*) AS Sex,A.edited_sex, A.edited_age/10 AS AgeBins, AVG(B.Duration)/60 AS timing
FROM roster as A
JOIN activities AS B on A.case_id = B.case_id
AND A.line_no=1
WHERE B.activity_code = 120307
GROUP BY A.edited_sex, AgeBins;
