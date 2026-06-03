-- pgexercises
/* PROMPT:
[Output the facility id that has the highest number of slots booked, again]
*/-- MY QUERY:
WITH total_slots AS (
    SELECT
        facid,
        SUM(slots) AS total
    FROM
        cd.bookings
    GROUP BY
        facid
) SELECT
    facid,
    total
FROM
    total_slots
WHERE
    total = (
        SELECT
            MAX(total)
        FROM
            total_slots
    );
/* WHY:
I used the CTE to get total slots per facility
and then used this CTE in subquery to filter by max total and get all matching the max.
*/
