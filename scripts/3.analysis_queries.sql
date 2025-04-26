-- Basic exploration of the dataset
SELECT * FROM agriculture;

-- Sample queries for analysis (you can add more based on your actual analysis)

-- 1. Analyze crop yields by year group
SELECT 
  YearGroup,
  AVG(yeilds) as avg_yield,
  MIN(yeilds) as min_yield,
  MAX(yeilds) as max_yield
FROM agriculture
GROUP BY YearGroup
ORDER BY YearGroup;

-- 2. Analyze relationship between rainfall groups and yields
SELECT
  rainfall_groups,
  AVG(yeilds) as avg_yield,
  COUNT(*) as sample_count
FROM agriculture
GROUP BY rainfall_groups
ORDER BY avg_yield DESC;

-- 3. Compare crop performance by season
SELECT
  Crops,
  Season,
  AVG(yeilds) as avg_yield,
  AVG(price) as avg_price
FROM agriculture
GROUP BY Crops, Season
ORDER BY Crops, Season;

-- 4. Find top performing locations
SELECT
  Location,
  AVG(yeilds) as avg_yield,
  COUNT(*) as data_points
FROM agriculture
GROUP BY Location
HAVING COUNT(*) > 10
ORDER BY avg_yield DESC
LIMIT 10;