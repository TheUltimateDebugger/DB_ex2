SELECT number, name
FROM members AS m
NATURAL JOIN (
    SELECT number, uid
    FROM memberInKnesset
    WHERE (number, uid) NOT IN (
        SELECT mk1.number, mk1.uid
        FROM memberInKnesset mk1
        NATURAL JOIN members m1,
             memberInKnesset mk2
        NATURAL JOIN members m2
        WHERE mk1.number = mk2.number
          AND m1.birthYear > m2.birthYear
    )
) AS temp
ORDER BY number, name;
