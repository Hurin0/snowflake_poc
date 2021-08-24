TRUNCATE TABLE POC.SNOWFLAKE_POC.CUSTOMER_STAGE;
TRUNCATE TABLE POC.SNOWFLAKE_POC.CUSTOMER_TARGET;
PUT file://C:\Users\bzurakow\repo\snowflake\poc_snowflake\stage_data.csv @poc.snowflake_poc.%customer_stage;
COPY INTO CUSTOMER_STAGE FILE_FORMAT = (type = csv FIELD_OPTIONALLY_ENCLOSED_BY = '"');