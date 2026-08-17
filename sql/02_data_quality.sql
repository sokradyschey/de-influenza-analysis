-- Check for missing date_used values
-- bigint 36562 missing dates values

SELECT COUNT(*) AS missing_date_used
FROM flu_data
WHERE date_used IS NULL;

-- Checking the dataset for duplicate records. There are duplicate records in the dataset, which may need to be addressed before analysis.
SELECT
    location,
    indicator,
    start_date,
    end_date,
    COUNT(*) AS record_count
FROM flu_data
GROUP BY
    location,
    indicator,
    start_date,
    end_date
HAVING COUNT(*) > 1;

-- Reviewing the entire dataset to identify duplicate records.
SELECT
    location,
    indicator,
    start_date,
    end_date,
    value,
    unit,
    COUNT(*) AS record_count
FROM flu_data
GROUP BY
    location,
    indicator,
    start_date,
    end_date,
    value,
    unit
HAVING COUNT(*) > 1;

-- Count the number of duplicate records
SELECT COUNT(*)
FROM (
    SELECT
        location,
        indicator,
        start_date,
        end_date,
        value,
        unit
    FROM flu_data
    GROUP BY
        location,
        indicator,
        start_date,
        end_date,
        value,
        unit
    HAVING COUNT(*) > 1
) duplicates;