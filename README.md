# 🌾 Agriculture Data Pipeline & Analytics

## 📊 Overview
This project implements an end-to-end data pipeline for agricultural data analysis. Raw data from an AWS S3 bucket is processed through Snowflake and visualized using PowerBI to derive insights on crop yields, rainfall patterns, temperature trends, and humidity effects.

## 📁 Repository Structure

This repository is organized as follows:
- `data/` - Contains the original agricultural dataset
- `scripts/` - SQL scripts for Snowflake setup, data transformation, and analysis
- `docs/` - Project documentation including architecture diagram and data dictionary
- `visualizations/` - PowerBI dashboard file and screenshots of key analyses

## 🏗️ Architecture
- **Data Source**: Agricultural dataset stored in AWS S3
- **Data Processing**: Snowflake for ETL and data transformations
- **Visualization**: PowerBI dashboards and reports
- **Integration**: AWS IAM roles for secure access management

## 🛠️ Implementation Details

### ☁️ AWS Setup
- Created S3 bucket to store raw agricultural data
- Configured IAM role for Snowflake access with proper permissions

### ❄️ Snowflake Implementation
- Created storage integration to connect securely to AWS S3
- Established database schema for agricultural data
- Implemented data transformations:
  - Adjusted rainfall and area metrics
  - Created categorical groupings for year ranges
  - Classified rainfall into low/medium/high categories

### 🔄 Data Transformation
The dataset underwent several transformations to enhance analytical value:
- Rainfall values were increased by 10%
- Area values were reduced by 10%
- Added year groupings (2004-2009: y1, 2010-2015: y2, 2016-2019: y3)
- Categorized rainfall into meaningful ranges (low/medium/high)

### 📈 Visualization
PowerBI was used to create interactive dashboards focusing on four key areas:
1. **🌧️ Rainfall Analysis**: Examining the impact of rainfall patterns on agricultural outcomes
2. **🌡️ Temperature Analysis**: Investigating how temperature variations affect crop performance
3. **💧 Humidity Analysis**: Analyzing the relationship between humidity levels and crop yields
4. **🌱 Yield Analysis**: Evaluating crop yield trends across different regions, seasons, and environmental conditions

## 📚 Dataset Information
The agriculture dataset includes the following metrics:
- Year, Location, Area
- Environmental factors: Rainfall, Temperature, Humidity
- Agricultural variables: Soil type, Irrigation method, Crop type
- Output metrics: Yields, Price
- Seasonal information

## 🧰 Tools & Technologies
- AWS S3
- Snowflake
- SQL
- PowerBI
- AWS IAM

## 🔮 Future Enhancements
- Implement automated data refresh
- Add machine learning models for yield prediction
- Expand dataset with additional agricultural parameters