-- pgexercises
/* PROMPT:
[Produce a list of member names, with each row containing the total member count]
*/-- MY QUERY:
SELECT
    COUNT(memid) OVER () AS "count",
    firstname,
    surname
FROM
    cd.members
ORDER BY
    joindate;
/* WHY:
Using an empty OVER() clause allows me to append a grand total to detail-level rows in a single pass.
This is vastly more efficient than the alternative, which would require querying the table twice
(once for the detail rows, and again in a subquery or cross join to get the total count)
*/
