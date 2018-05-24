# Assignment 9: American Time Use Survey
In this assignment you will use SQL to query the 2003-2015 American Time Use Survey (ATUS). YOu can download the database [here](https://uchicago.app.box.com/s/1yvi09mtje40ep21mf4vt3obm70fvsms). Note that this comes from about 1GB of CSV files which would be strain pandas to load in python. (The sqlite file is smaller, 200MB, because it stores the data more efficiently than a CSV.) You will find the ATUS [Data Dictionary](https://www.bls.gov/tus/atuscpscodebk16.pdf) and [Lexicon](https://www.bls.gov/tus/lexiconwex2016.pdf) useful.

Please submit sql scripts `q1.sql, q2.py, q3.sql, q4.sql, q6.sql`, a python script `q5.py` and the image specified below.

1. What is the state with the lowest fraction of high school graduates? Put your answer in `ANSWERS.txt`.

Hint: You can look up the state codes [here](https://www.census.gov/geo/reference/ansi_statetables.html).

2. What proportion of respondents who are eligible to work did work last week? (4 points)

Hint: Use the `worked_last_week` column in the `respondents` table and see `TUFWK` in the dictionary. When `worked_last_week` > 2, the respondent is retired/disabled/unable to work.

3. Group your answer to (4) by whether or not the respondent has a spouse or partner in their household (three possibilities: spouse, partner, neither). (4 points)

Hint: `spouse_or_partner_present`, see `TRSPPRES` in the codebook.

4. How many hours on average are spent playing video games (code 120307) by men and women (1 and 2) and by age decade (10-19, 20-29, 30-39, etc.)?

    Hint: you can `GROUP BY` multiple columns by separating them with commas.
    Hint: to group by age decade, use the fact that the default integer division in SQL is floor division. (4 points)
    
5. Use python to run your script from (2) and plot the results with two lines, one for men and one for women, with age decade on the x axis and average hours gaming on the y axis. Label the axes appropriately and use a legend to identify the two lines. Save the plot in `gaming.png`. (4 points)

Hint: Use `set_index()` and `unstack()` similar to the last assignment.

6. How many hours are spent on average are on housework, by sex and educational attainment? (4 points)

Hint: Housework actitivity codes start with `02`. This will require two `JOIN`s because `edited_sex` is in the `roster` table while `educational_attainment` is in `cps`. See the last query in the slides for an example.
