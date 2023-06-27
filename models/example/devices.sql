

{{ config(materialized='streaming_table') }}

SELECT 
    CAST(user_id AS LONG) as user_id,
    CAST(calories_burnt AS FLOAT) as calories_burnt,
    CAST(num_steps AS LONG) as num_steps,
    CAST(miles_walked AS FLOAT) as miles_walked,
    CAST(timestamp AS TIMESTAMP) as time_stamp,
    CAST(device_id AS LONG) as device_id
   FROM STREAM read_files("dbfs:/databricks-datasets/iot-stream/data-device/*.json");

