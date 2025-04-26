USE ROLE ACCOUNTADMIN;

-- Create storage integration to connect to S3
CREATE OR REPLACE STORAGE INTEGRATION PBI_Integration
 TYPE = EXTERNAL_STAGE
 STORAGE_PROVIDER = 'S3'
 ENABLED = TRUE
 STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::234997486434:role/powerbi_role'
 STORAGE_ALLOWED_LOCATIONS = ('s3://ayush-powerbi-project/')
 COMMENT = 'Optional Comment';
 
-- Description Integration Object
DESC INTEGRATION PBI_Integration;

-- Create database and schema
CREATE database PowerBI;
CREATE schema PBI_Data;

-- Create initial table structure
CREATE table PBI_Dataset (
  Year int,
  Location string,
  Area int,
  Rainfall float,
  Temperature float,
  Soil_type string,
  Irrigation string,
  yeilds int,
  Humidity float,
  Crops string,
  price int,
  Season string
);

-- Create stage for data loading
CREATE stage PowerBI.PBI_Data.pbi_stage
  url = 's3://ayush-powerbi-project/'
  storage_integration = PBI_Integration;

-- Load data from S3 into Snowflake
COPY into PBI_Dataset 
  from @PowerBI.PBI_Data.pbi_stage
  file_format = (type=csv field_delimiter=',' skip_header=1)
  on_error = 'continue';

-- List files in stage
LIST @PowerBI.PBI_Data.pbi_stage;

-- Create working copy of the data
CREATE TABLE agriculture as 
  SELECT * FROM pbi_dataset;