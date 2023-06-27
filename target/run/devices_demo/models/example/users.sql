create or refresh streaming table `tech_summit_sql`.`dbt`.`users`
  as
    

SELECT CAST(userid AS INTEGER) as userid,
          gender,
          CAST(age AS INTEGER) as age,
          CAST(height AS INTEGER) as height,
          CAST(weight AS INTEGER) as weight,
          smoker,
          familyhistory,
          cholestlevs,
          bp,
          CAST(risk AS INTEGER) as risk
   FROM STREAM read_files("dbfs:/databricks-datasets/iot-stream/data-user/*");
