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
I used the COUNT OVER() clause with no partition
to get the total count for all members.
*/
