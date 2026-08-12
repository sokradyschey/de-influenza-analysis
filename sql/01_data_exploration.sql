-- Create a table to store the flu data
CREATE TABLE flu_data (
	location VARCHAR(255),
	county VARCHAR(255),
	indicator VARCHAR(255),
	value NUMERIC,
	start_date TIMESTAMP,
	end_date TIMESTAMP,
	date_used TIMESTAMP,
	unit VARCHAR(255),
	age_adjusted BOOLEAN
);

-- View a sample of the data
SELECT *
FROM flu_data
LIMIT 10;

-- Count the total number of records in the dataset 
-- Total records is 36,562
SELECT COUNT(*)
FROM flu_data;

-- The dataset contains 36,562 records covering July 2019 through November 2025.
SELECT
    MIN(start_date) AS earliest_date,
    MAX(end_date) AS latest_date
FROM flu_data;

-- There are 16 unique indicators in the dataset
-- Flu Vaccine Doses Administered
-- Percentage Vaccinated
-- Age-specific versions of both
SELECT DISTINCT indicator
FROM flu_data;

-- There are 4 unique counties in the dataset
-- Kent County, New Castle County, Sussex County, and Null (for records that do not have a county associated with them)
SELECT DISTINCT county
FROM flu_data;

-- There are 2 unique units in the dataset
-- Percent and People
SELECT DISTINCT unit
FROM flu_data;

-- There are 347 unique locations in the dataset
-- Locations are a combination of county, zip code, and Census tract. Some records do not have a location associated with them, so they are null.
SELECT DISTINCT location
FROM flu_data;

-- Count how many records exist for each indicator.
-- This helps us understand the structure of the dataset
-- before beginning the analysis.
SELECT
    indicator,
    COUNT(*)
FROM flu_data
GROUP BY indicator;

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