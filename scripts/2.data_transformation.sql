-- Update rainfall values (increase by 10%)
UPDATE agriculture
SET rainfall = 1.1*rainfall;

-- Update area values (decrease by 10%)
UPDATE agriculture
SET area = 0.9*area;

-- Add YearGroup column
ALTER TABLE agriculture
ADD YearGroup string;

-- Populate YearGroup based on year ranges
UPDATE agriculture
SET yearGroup = 'y1'
WHERE year >= 2004 AND year <= 2009;

UPDATE agriculture
SET yearGroup = 'y2'
WHERE year >= 2010 AND year <= 2015;

UPDATE agriculture
SET yearGroup = 'y3'
WHERE year >= 2016 AND year <= 2019;

-- Add rainfall_groups column
ALTER TABLE agriculture
ADD rainfall_groups string;

-- Populate rainfall_groups based on rainfall ranges
-- Low rainfall (255-1200mm)
UPDATE agriculture
SET rainfall_groups = 'low'
WHERE RAINFALL >= 255 AND RAINFALL <= 1200;

-- Medium rainfall (1200-2800mm)
UPDATE agriculture
SET rainfall_groups = 'medium'
WHERE RAINFALL >= 1200 AND RAINFALL < 2800;

-- High rainfall (2800-4103mm)
UPDATE agriculture
SET rainfall_groups = 'high'
WHERE RAINFALL >= 2000 AND RAINFALL < 4103;