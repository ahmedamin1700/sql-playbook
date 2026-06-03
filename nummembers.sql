-- pgexercises
/* PROMPT:
[Produce a numbered list of members]
*/-- MY QUERY:
SELECT
    ROW_NUMBER()OVER(
ORDER BY
    joindate) AS ROW_NUMBER,
    firstname,
    surname
FROM
    cd.members
ORDER BY
    joindate;
/* WHY:
I used ROW_NUMBER(). 
It is critical to include an ORDER BY inside the OVER()
clause to guarantee that the numbering is deterministic and repeatable.
*/
