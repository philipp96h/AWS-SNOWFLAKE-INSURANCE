-- Step 1: Erstellen eines Stages und Laden von Daten aus S3

CREATE OR REPLACE STAGE my_stage
  URL = 's3://raw-data-insurance/'
  STORAGE_INTEGRATION = my_s3_integration
  FILE_FORMAT = (TYPE = 'CSV' FIELD_OPTIONALLY_ENCLOSED_BY = '"');

-- Step 2: Kopiere die Daten in die Versicherungstabelle

COPY INTO insurance_data
  FROM @my_stage
  FILES = ('insurance.csv')
  ON_ERROR = 'skip_file';  -- Fehler überspringen, wenn sie auftreten
