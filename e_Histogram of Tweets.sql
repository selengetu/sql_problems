WITH histogram AS (SELECT user_id, count(*) as activity FROM tweets
where tweet_date between '2021-12-31' and '2023-01-01'
group by user_id)
select activity, count(user_id) as user_num
FROM histogram
Group by activity

-- Optimized version

SELECT count(*) AS user_num, activity
FROM (
    SELECT user_id, count(*) AS activity
    FROM tweets
    WHERE tweet_date BETWEEN '2021-12-31' AND '2023-01-01'
    GROUP BY user_id
) AS histogram
GROUP BY activity;
