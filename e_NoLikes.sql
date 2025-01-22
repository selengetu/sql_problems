SELECT pages.page_id
FROM pages
Left join page_likes
on pages.page_id = page_likes.page_id
WHERE user_id is null
order by page_id asc