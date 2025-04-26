# Agriculture Dataset Data Dictionary

This document provides definitions and details for all fields in the agriculture dataset used in this project.

## Dataset Fields

| Field | Data Type | Description | Example Values |
|-------|-----------|-------------|---------------|
| Year | Integer | Calendar year of data collection | 2004, 2015, 2019 |
| Location | String | Geographical location where data was collected | "Punjab", "Karnataka", "Tamil Nadu" |
| Area | Integer | Cultivated land area in hectares | 1200, 5000, 8500 |
| Rainfall | Float | Annual rainfall in millimeters | 850.5, 1245.7, 3200.0 |
| Temperature | Float | Average temperature in degrees Celsius | 24.5, 28.7, 32.1 |
| Soil_type | String | Classification of soil | "Loamy", "Clay", "Sandy" |
| Irrigation | String | Method of irrigation used | "Drip", "Sprinkler", "Flood" |
| yeilds | Float | Crop production amount in metric tons per hectare | 2.4, 5.7, 8.2 |
| Humidity | Float | Average relative humidity percentage | 65.5, 72.3, 85.0 |
| Crops | String | Type of crop cultivated | "Rice", "Wheat", "Cotton", "Sugarcane" |
| price | Integer | Market price in local currency per unit | 1200, 2500, 3800 |
| Season | String | Growing season | "Kharif", "Rabi", "Zaid" |

## Derived Fields (Added in Snowflake)

| Field | Data Type | Description | Values |
|-------|-----------|-------------|--------|
| YearGroup | String | Categorical grouping of years | "y1" (2004-2009), "y2" (2010-2015), "y3" (2016-2019) |
| rainfall_groups | String | Categorization of rainfall amounts | "low" (255-1200mm), "medium" (1200-2800mm), "high" (2800-4103mm) |

## Notes
- Area values were adjusted by -10% in data processing
- Rainfall values were adjusted by +10% in data processing
- The dataset contains 3,158 records spanning from 2004 to 2019