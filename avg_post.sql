
Select user_id, max(post_date::DATE)- min(post_date::DATE)  as days_between
FROM posts
WHERE post_date between ('2020-12-31') and ('2022-01-01')
group by user_id
HAVING count(post_id)>1