-- pgexercises
/* PROMPT:
[Produce a numbered list of members]
*/-- MY QUERY:
SELECT
    ROW_NUMBER()OVER() AS ROW_NUMBER,
    firstname,
    surname
FROM
    cd.members
ORDER BY
    joindate;
/* WHY:
I used the ROW_NUMBER() clause with no partition
to generate number per row for all members.
*/
