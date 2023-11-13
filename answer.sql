-- TYPE YOUR SQL QUERY BELOW

-- PART 1: Create a SQL query that maps out the daily average users before and after the feature change
SELECT DATE(timestamp) AS date, COUNT(DISTINCT user_id) AS daily_avg_users
FROM users
WHERE timestamp < 'feature_change_date'
GROUP BY date
ORDER BY date;

SELECT DATE(timestamp) AS date, COUNT(DISTINCT user_id) AS daily_avg_users
FROM users
WHERE timestamp >= 'feature_change_date'
GROUP BY date
ORDER BY date;


-- PART 2: Create a SQL query that indicates the number of status changes by card
SELECT c.card_id, COUNT(sc.status_change_id) AS num_status_changes
FROM cards c
JOIN status_changes sc ON c.card_id = sc.card_id
GROUP BY c.card_id
ORDER BY c.card_id;



