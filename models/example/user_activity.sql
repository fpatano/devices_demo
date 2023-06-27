
{{ config(
    materialized = 'materialized_view',
    tblproperties = {
'delta.enableChangeDataFeed': 'true'}
) }}

SELECT
  i.time_stamp,
  u.risk,
  u.age,
  avg(i.calories_burnt) as avg_calories_burnt, 
  COUNT(*) AS num_records,
  AVG(i.num_steps) AS avg_num_steps,
  AVG(i.miles_walked) AS avg_miles_walked
FROM
  {{ ref('devices') }} i
  JOIN {{ ref('users') }} u
  ON i.user_id = u.userid
GROUP BY
ALL
