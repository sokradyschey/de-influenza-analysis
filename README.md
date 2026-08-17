# Delaware Influenza Vaccination Data Analysis

## Overview

This project explores publicly available Delaware influenza vaccination data using PostgreSQL and SQL.

The goal is to understand vaccination patterns across geographic locations and age groups and to develop foundational data analysis skills using a real-world dataset.

## Tools

- PostgreSQL
- pgAdmin
- SQL

## Dataset

The dataset contains influenza vaccination measurements across Delaware locations and counties.

The data includes:

- Geographic location
- County
- Indicator
- Measurement value
- Measurement period
- Unit
- Age-adjustment status

## Current Project Status

### Data Exploration

Completed initial exploration of the dataset, including:

- Identified available indicators
- Identified geographic dimensions
- Identified measurement units
- Determined the available date range
- Reviewed missing values
- Investigated potential duplicate records
- Reviewed the structure and data types of each column

### Initial Findings

The dataset contains two primary types of measurements:

- Flu Vaccine Doses Administered
- Percentage Vaccinated

Both measurements are available for different age groups.

The `date_used` field contains `N/A` values and does not appear to be useful for determining the measurement period. `start_date` and `end_date` are used instead.

Potential duplicate records were identified during data-quality exploration and are currently being investigated.

## Project Questions

The analysis will eventually explore questions such as:

1. How has vaccination percentage changed over time?
2. How does vaccination percentage differ across age groups?
3. How does vaccination vary across Delaware counties?
4. How many vaccine doses were administered over time?
5. Are there meaningful differences in vaccination patterns across locations?

## Project Status

Currently in the data exploration and data-quality phase.