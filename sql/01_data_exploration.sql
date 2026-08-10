-- View a sample of the data
SELECT *
FROM flu_data
LIMIT 10;


-- Find the different indicators
SELECT DISTINCT indicator
FROM flu_data;


-- Count how many records exist for each indicator.
-- This helps us understand the structure of the dataset
-- before beginning the analysis.
SELECT
    indicator,
    COUNT(*)
FROM flu_data
GROUP BY indicator;