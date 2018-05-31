
SELECT spouse_or_partner_present, AVG(worked_last_week = 1)
FROM respondents
WHERE worked_last_week <= 2
GROUP BY spouse_or_partner_present;
