-- pgexercises
/* PROMPT:
[Rank members by (rounded) hours used]
*/-- MY QUERY:
SELECT
    *,
    RANK() OVER(
ORDER BY
    main.hours DESC) AS rnk
FROM
    (
        SELECT
            m.firstname,
            m.surname,
            ROUND(
                SUM (b.slots) / 2,
                -1
            ) AS hours
        FROM
            cd.members AS m
        LEFT JOIN cd.bookings AS b
            ON m.memid = b.memid
        GROUP BY
            1,
            2
    ) AS main
ORDER BY
    rnk,
    main.surname,
    main.firstname;
/* WHY:
Rounded the hours to the nearest 10th by using -1 in ROUND,
RANK total hours in the outer query.
*/
