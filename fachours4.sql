-- pgexercises
/* PROMPT:
[Output the facility id that has the highest number of slots booked, again]
*/-- MY QUERY:
WITH ranked_slots AS (
    SELECT
        facid,
        SUM(slots) AS total,
        RANK()OVER(
    ORDER BY
        SUM(slots) DESC) AS RANK
    FROM
        cd.bookings
    GROUP BY
        facid
) SELECT
    facid,
    total
FROM
    ranked_slots
WHERE
    RANK =1;
/* WHY:
I used the RANK() window function over the aggregated sums.
This guarantees we capture ties for the top spot,
while allowing the query planner to calculate the max and the aggregations in a single pass without needing a subquery.
*/
